
wins_losses <- function(x) {
	#data = c(x$value)
	data = x
	algorithms <- c(1,2,3)
	winList <- vector()
	lossList <- vector()
	for (algorithm in 1:length(algorithms)) {
		winList[algorithm] <- 0
		lossList[algorithm] <- 0
	}

	if (is.null(data) || nrow(data[data$algorithmid== 1,]) == 0 || nrow(data[data$algorithmid== 2,])==0 || nrow(data[data$algorithmid== 3,])==0 ){
		df =  data.frame(algorithms,winList,lossList)
		return (df)
	}

	for (algorithm1 in 1:length(algorithms)) {
		for (algorithm2 in 1:length(algorithms)) {
			
			if (algorithm1 != algorithm2) {
				wilcoxon1 = wilcox.test(
					data[data$algorithmid== algorithm1,]$value, 
					data[data$algorithmid== algorithm2,]$value, 
					alternative="greater", 
					paired=TRUE, 
					exact=FALSE, 
					correct=FALSE)
				wilcoxon2 = wilcox.test(
					data[data$algorithmid== algorithm1,]$value, 
					data[data$algorithmid== algorithm2,]$value, 
					alternative="less", 
					paired=TRUE, 
					exact=FALSE, 
					correct=FALSE)
				#print(wilcoxon1)
				if (!is.na(wilcoxon1$p.value) && wilcoxon1$p.value  < 0.05) {
					winList[algorithm1] <- winList[algorithm1] + 1
				}
				if (!is.na(wilcoxon2$p.value) && wilcoxon2$p.value  < 0.05) {
				  lossList[algorithm1] <- lossList[algorithm1] + 1
				}
        
			}
		}
	}

	df =  data.frame(algorithms, winList, lossList)
	#print(head(df))
	return (df)
}

# use the odbc connector
library("RODBC")
batchWinLosses <- function(outputfile, measureid) {

	#read in data from database
	ch <- odbcConnect("MiningDatabase")
	query = c("select algorithmid, instanceid, value from Results where measureid=", measureid, " and iteration=10000 order by instanceid, sample")
	print(paste(query,collapse=" "))
	results <- sqlQuery(ch, paste(query,collapse=" "))

	instanceids_df<- sqlQuery(ch,"select distinct instanceid from Results where measureid=1 order by instanceid")
	
	odbcClose(ch)
	algorithms <- c(1,2,3)

	instanceids = c(instanceids_df$instanceid)
	#print(head(instanceids))
	#print(instanceids[2])
	#for each instanceid, do wilcoxin
	for(i in 1:length(instanceids)) {
		# we want to filter the ones with instanceids[i]
		x <- results[results$instanceid %in% c(instanceids[i]),]

		# call the wins losses calculator
		mwu <- wins_losses(x)
		if (!is.null(mwu) && !is.na(mwu) && is.data.frame(mwu)) {
			for (a in 1:length(algorithms)) {
				# instanceid. algorithmid, win, loss
				output <- c(instanceids[i], a, mwu[mwu$algorithms==a,]$winList, mwu[mwu$algorithms==a,]$lossList)
				#print(output)
				write(
					output, 
					outputfile, 
					ncolumns=4,
					sep=",",
					append=TRUE)
			}

		}	
	}
}

#gold wins and losses
batchWinLosses("goldwinslosses.csv", 1)
print("done")
