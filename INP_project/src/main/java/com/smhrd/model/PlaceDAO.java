package com.smhrd.model;


import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;


public class PlaceDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public ArrayList<PlaceDTO> PlaceAll(String article_seq){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.PlaceAll");
		
		sqlSession.close();
		return list;
	}


}


