select measureid, algorithmid, iteration, avg(value)
from Results R 
and instanceid = 20718253 -- get from previous query
group by measureid, algorithmid, iteration
order by measureid, algorithmid, iteration