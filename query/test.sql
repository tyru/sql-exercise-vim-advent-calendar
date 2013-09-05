-- 10‹L–ˆÈã‘‚¢‚Ä‚él‚ğ•\¦

select username, count(*) as ‘‚¢‚½“ú”
from VimAdventCalendar
group by username
having count(*) >= 10
order by count(*) desc