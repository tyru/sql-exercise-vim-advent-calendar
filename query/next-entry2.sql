USE [VimAdventCalendar]
GO

select T1.nth, T1.username, T1.title, NextTable.nth
from VimAdventCalendar T1
		left outer join
	 (
		select top 1 *
		from VimAdventCalendar NextTable
		where T1.nth < NextTable.nth
		order by NextTable.nth
	 ) NextTable