-- 10�L���ȏ㏑���Ă�l��\��

select username, count(*) as ����������
from VimAdventCalendar
group by username
having count(*) >= 10
order by count(*) desc