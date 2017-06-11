
rankAlgorithms <- function( path) {

	x <- scan(path,what=list(perf=0,alg=""))

	data <- c(x$perf)

	#data 

	group <- factor(x$alg)

	#group

	algorithms <- unique(group)
	print(algorithms)
	rankList1 <- vector()
	for (algorithm in 1:length(algorithms)) {
		rankList1[algorithm] <- 0
	}

	for (algorithm1 in 1:length(algorithms)) {
		for (algorithm2 in 1:length(algorithms)) {
			if (algorithm1 != algorithm2) {
				wilcoxon1 = wilcox.test(data[group == algorithms[algorithm1]], data[group == algorithms[algorithm2]], alternative="less", paired=TRUE, exact=FALSE, correct=FALSE)
				
				if (wilcoxon1$p.value  < 0.05) {
					rankList1[algorithm1] <- rankList1[algorithm1] + 1
				}
			}
		}
	}

	df =  data.frame(algorithms, rankList1)
	#algorithms[rankList1 == min(rankList1)]
	return (df)
}

batchRank <- function( p) {
	x = read.csv(p,header = TRUE)
	xC = ncol(x)
	xR = nrow(x)

	for (r in 1:xR)
	{
		path = levels(x$path)[x[r,1]]
		tag = levels(x$tag)[x[r,2]]
		category = levels(x$category)[x[r,3]]
		outputfile = substring(levels(x$output)[x[r,4]],2)
		mwu = rankAlgorithms( path )
		for ( a in 1:3 )
		{
			output <- c(levels(mwu$algorithms)[mwu$algorithms[a]],mwu$rankList1[a], tag,category)
			write(output, outputfile, ncolumns=4,sep=",",append=TRUE)
			print(path)
		}
	}
}

batchDivisionRank <- function( p) {
	x = read.csv(p,header = TRUE)
	xC = ncol(x)
	xR = nrow(x)

	for (r in 1:xR)
	{
		path = levels(x$path)[x[r,1]]
		tag = levels(x$tag)[x[r,2]]
		category = levels(x$category)[x[r,3]]
		outputfile = substring(levels(x$output)[x[r,4]],2)
		mwu = rankAlgorithms( path )
		for ( a in 1:length(mwu$algorithms) )
		{
			output <- c(levels(mwu$algorithms)[mwu$algorithms[a]],mwu$rankList1[a], tag,category)
			write(output, outputfile, ncolumns=4,sep=",",append=TRUE)
			print(path)
		}
	}
}

batchDivisionRank("MWU//MWU_GoldItemsOverTime_batch.csv")
#batchRank("MWU//MWU_GoldItemsOverTime_batch.csv")
#batchRank("MWU//MWU_Entropy_batch.csv")
#batchRank("MWU//MWU_DistanceTravelled_batch.csv")
batchRank("MWU//MWU_WasteItemsOverTime_batch.csv")




