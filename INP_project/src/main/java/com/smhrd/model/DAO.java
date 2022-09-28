package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class DAO {
     
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	//위에 임포트 구문 보고 org에 있는 애로 갖고오면 x 내가 만든 sessionmanager ibatis에서 제공하는 애가 따로 
	
	
	
	// board 테이블에 들어있는 모든 정보 조회 
	public ArrayList<Board> selectAll(){
		ArrayList<Board> list = null; 
		//1. sqlsession 만들기 
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		// open Session boolean -> autoCommit-> 자동저장 무조건 true쓴다고 생각
		
		//2. mapper.xml 파일안에 있는 기능을 수행 
	    list =(ArrayList)sqlSession.selectList("com.smhrd.model.DAO.selectAll");
		//3. 결과값 반환 
		return list;
	}
	public int insert(Board board) {
		int result =0;
		//1. sqlsession 가져오기 
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		//2.sql구문 실행 
		result =sqlSession.insert("com.smhrd.model.DAO.insert", board);  
	
		return result;
	}
	
	public Board selectOne(String boardnum) {
		Board result = null; 
		//1. sqlsession 가져오기 
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		//2.mapper.xml안에 있는 쿼리문 실행 
		//sqlSession.메소드(mapper.xml안에 있는 쿼리문 id값, mapper.xml로 넘겨주고 싶은값);
		result =  sqlSession.selectOne("com.smhrd.model.DAO.select", boardnum);
	
		return result;
	
	}
	
	public int Update(Board board) {
		int result =0;     // update, delete, insert -> 몇 행이 실행 int 
		//1. sqlSession 가져오기 
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		//2.특정한 sql 구문 골라서  실행 
		result =sqlSession.update("com.smhrd.model.DAO.update", board);  
		
		//3. 빌린 Connection 돌려주기 
		sqlSession.close();
		//4. 실행결과 리턴 
	
		return result;
	
	}
	
	public int delete(String boardnum) {
		int result =0;     
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		result =sqlSession.delete("delete", boardnum);  
		sqlSession.close();
		return result;
	
	}
	
	
	
	//sql -> select -> sqlsession(두개 -> 우리가 채워줘야되는 게 있음) 
	// 하나 -> 채워줘야될게 없음 
	
}
