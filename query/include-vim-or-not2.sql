select T1.*, IsNull(T3.title_has_vim, 0) as title_has_vim
from VimAdventCalendar T1
		full outer join
	 (select nth, 1 as title_has_vim from VimAdventCalendar T2
	  where title like '%vim%' or title like '%Vim%') T3
on T1.nth = T3.nth