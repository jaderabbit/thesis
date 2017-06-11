use [Experiment2017]
go

select robots, avg(R.value)
from Results R
join Experiment on R.experimentid = Experiment.id
where algorithmid = 2
and measureid = 814
group by robots