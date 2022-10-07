package com.smhrd.model;


import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;


public class PlaceDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	public ArrayList<PlaceDTO> PlaceAll(String place_seq){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.PlaceAll");
		
		sqlSession.close();
		return list;
	}
	
	
	public ArrayList<PlaceDTO> place_select_all(){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.place_select_all");
		
		sqlSession.close();
		return list;
	}
	
	public ArrayList<PlaceDTO> place_select_mapKor(){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.place_select_mapKor");
		
		sqlSession.close();
		return list;
	}
	public ArrayList<PlaceDTO> place_select_mapJapan(){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.place_select_mapJapan");
		
		sqlSession.close();
		return list;
	}
	public ArrayList<PlaceDTO> place_select_mapChina(){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.place_select_mapChina");
		
		sqlSession.close();
		return list;
	}
	public ArrayList<PlaceDTO> place_select_mapAmerica(){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.place_select_mapAmerica");
		
		sqlSession.close();
		return list;
	}
	public ArrayList<PlaceDTO> place_select_mapEx(){
		ArrayList<PlaceDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.PlaceDAO.place_select_mapEx");
		
		sqlSession.close();
		return list;
	}






}


