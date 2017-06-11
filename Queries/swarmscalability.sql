use [Experiment2017]
go

select algorithmid, Exp.robots as swarmdensity, avg(value), STDEVP(value)
from Results R
join Experiment Exp on Exp.id = R.experimentid
join Environment Env on Env.id = R.environmentid
where measureid = 1
and Env.size = 500 -- only want large environments
and iteration = 10000 --still need to decide about this. Can be after 1000 timesteps? Not sure if make sense. Also, is it 9999?
group by Exp.robots, algorithmid
order by algorithmid, Exp.robots;

-- sanity check on robots? Guess we will need to normalize it. 
