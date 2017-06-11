use [Experiment2017]
go

select algorithmid, Env.objects as itemdensity, avg(value) as avg, STDEVP(value) as stdev
from Results R
join Environment Env on Env.id = R.environmentid
where measureid = 1
and Env.size = 500 -- only want large environments
and iteration = 10000 --still need to decide about this. Can be after 1000 timesteps? Not sure if make sense
group by algorithmid, Env.objects
order by algorithmid, Env.objects;
