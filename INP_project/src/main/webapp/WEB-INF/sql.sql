select * from inp_member;

select * from inp_community;
order by article_seq desc;

select a.m_nick as m_nick, b.article_seq as article_seq, b.article_title as article_title,
		b.article_content as article_content, b.article_date as article_date,
		b.m_id as m_id, b.article_cnt as article_cnt
from inp_member a, inp_community b
where a.m_id = b.m_id
order by b.article_seq desc

select a.m_nick as m_nick, b.article_seq as article_seq, b.article_title as article_title,
		b.article_content as article_content, b.article_date as article_date,
		b.m_id as m_id, b.article_cnt as article_cnt
from inp_member a, inp_community b
where a.m_id = b.m_id and article_seq=#{article_seq}

