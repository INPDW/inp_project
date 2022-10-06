select * from inp_member;

select * from inp_community;
order by article_seq desc;

select a.m_nick
from inp_member a, inp_community b
where a.m_id = b.m_id and a.m_id = 'kim'