package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CommentDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	
	public ArrayList<CommentDTO> comAll(String article_seq){
		ArrayList<CommentDTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.CommentDAO.comAll");
		
		sqlSession.close();
		return list;
	}

	public int comInsert(CommentDTO CommentDTO) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.insert("com.smhrd.model.CommunityDAO.comInsert", CommentDTO);
		sqlSession.close();
		return result;
	}



	public int comDelete(String cmt_seq) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.delete("com.smhrd.model.CommentDAO.comDelete", cmt_seq);
		sqlSession.close();
		return result;

	}

	

}
