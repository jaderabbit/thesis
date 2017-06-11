select type as environmentdistribution, ratio as r
from Results R 
join Environments Env on R.environmentid = Env.id
where size = 200
and measureid = 817 --to verify
and algorithmid = 2 -- to verify
group by type, ratio
order by type, ratio