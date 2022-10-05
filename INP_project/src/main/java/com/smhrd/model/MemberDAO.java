package com.smhrd.model;

import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();

	public int join(MemberDTO MemberDTO) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.insert("com.smhrd.model.MemberDAO.join", MemberDTO);
		sqlSession.close();

		return result;
	}

	public MemberDTO idCheck(String m_id) {
		MemberDTO result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.idCheck", m_id);
		sqlSession.close();

		return result;

	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.login", dto);
		sqlSession.close();

		return result;

	}

}
