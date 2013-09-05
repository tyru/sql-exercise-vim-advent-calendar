USE [VimAdventCalendar]
GO

select T1.nth, T1.username, T1.title, T2.nth as next_nth, T2.username as next_username, T2.title as next_title
from VimAdventCalendar T1,
	 VimAdventCalendar T2
where T1.nth + 1 = T2.nth