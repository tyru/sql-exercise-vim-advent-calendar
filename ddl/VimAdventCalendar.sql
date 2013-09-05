USE [VimAdventCalendar]
GO

if exists (select * from sysobjects where id =
object_id(N'[dbo].[VimAdventCalendar]') and
  OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[VimAdventCalendar]
GO
CREATE TABLE [dbo].[VimAdventCalendar] (
	[nth] [int] not null,
	[date] [datetime] not null,
	[username] [nchar] (32) not null,
	[title] [nchar] (256) not null,
	PRIMARY KEY (nth)
) ON [PRIMARY]
GO