use [Experiment2017]
go

select instanceid -- to verify if correct field
from InstanceIdMap map
join Environments Env on Env.id = map.environmentid
join Experiments Exp on Exp.id = map.experimentid
where objects = 50
and robots = 50
and division = 0
and ratio = 1
and size = 200
and type = 1;

select iteration, avg(value)
from Results R 
where algorithmid = 2 --HB? confirm
and measureid = 814 -- confirm
and instanceid = ? -- get from previous query
group by iteration
order by iteration