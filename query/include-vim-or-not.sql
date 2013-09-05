select *, (select 1
			from VimAdventCalendar T2
			where T1.nth = T2.nth AND T2.title like '%Vim%'
		) as IncludeVim
from VimAdventCalendar T1