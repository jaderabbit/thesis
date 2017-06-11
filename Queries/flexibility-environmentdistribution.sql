select algorithmid,  Env.type as type, Exp.division as tau, avg(value) as avg, STDEVP(value) as stdev
from Results R
join Experiment Exp on Exp.id = R.experimentid
join Environment Env on Env.id = R.environmentid
where measureid = 1
and iteration = 10000 --still need to decide about this. Can be after 1000 timesteps? Not sure if make sense. Also, is it 9999?
group by algorithmid, Env.type, Exp.division
order by algorithmid, Env.type, Exp.division;
