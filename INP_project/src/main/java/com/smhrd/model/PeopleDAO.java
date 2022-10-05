package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;



public class PeopleDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public ArrayList<CommentDTO> comAll(String article_seq){
		ArrayList<CommentDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.CommentDAO.comAll");
		
		sqlSession.close();
		return list;
	}
	

}
