-- 10記事以上書いてる人を表示

select username, count(*) as 書いた日数
from VimAdventCalendar
group by username
having count(*) >= 10
order by count(*) desc