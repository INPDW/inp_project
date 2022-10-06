package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class GoViewCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		CommunityDTO dto = new CommunityDTO();
		try {
			request.setCharacterEncoding("EUC-KR");
			System.out.println("들어와!");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String article_seq = request.getParameter("article_seq");
		
	//	System.out.println(article_seq);
	//	System.out.println(article_content);
//		System.out.println(m_id);
		

		CommunityDAO dao = new CommunityDAO();
		
		dto = dao.selectOne(article_seq); // dao의 selectOne 기능 실행
		
		request.setAttribute("dto", dto);
		
		return "view";
	}

}
