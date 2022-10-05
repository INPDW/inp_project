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
	
	
	
	
	public int idCheck(String m_id) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.idCheck", m_id);  
		sqlSession.close();
		
		if(result==1) {
			return 1; // 아이디 중복
		}else {
			return 0; // 회원가입 가능
		}
		
		
	}
	

	
	public int login(MemberDTO dto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.login", dto);
		sqlSession.close();
		
		if(result==1) {
			return 1; // 로그인 가능
		}else {
			return 0; // 로그인 불가
		}
		
	}
	
	
	
	
	

	
	
	
	
}
