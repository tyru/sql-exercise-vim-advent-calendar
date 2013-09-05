select count(*) as count, title_has_vim
from (select *, (case when title like '%vim%' or title like '%Vim%' then 1 else 0 end) as title_has_vim
	from VimAdventCalendar T1) as T2
group by title_has_vim
order by count desc