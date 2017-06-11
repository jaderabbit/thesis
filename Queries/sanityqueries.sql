use [Experiment2017]
go


select top 10 iteration, count(*) from Results 
where measureid = 1
and iteration = 10000 or iteration = 9999
group by iteration;
