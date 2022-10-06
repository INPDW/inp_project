package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDTO;

public class GoViewCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		CommunityDTO dto = new CommunityDTO();
		
		String article_seq = request.getParameter("article_seq");
		String article_title = request.getParameter("article_title");
		String article_content = request.getParameter("article_content");
		String m_id = request.getParameter("m_id");
		
		System.out.println(article_seq);
		System.out.println(article_title);
		System.out.println(article_content);
		System.out.println(m_id);
		
		
		
		dto.setArticle_seq(article_seq);
		dto.setArticle_title(article_title);
		dto.setArticle_content(article_content);
		dto.setM_id(m_id);
		
		request.setAttribute("dto", dto);
		
		return "view";
	}

}
