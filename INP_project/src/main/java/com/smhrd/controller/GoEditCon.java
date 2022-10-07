package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDTO;

public class GoEditCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		CommunityDTO dto = new CommunityDTO();
		try {
			request.setCharacterEncoding("EUC-KR");
			System.out.println("음???");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String article_seq = request.getParameter("article_seq");
		String article_title = request.getParameter("article_title");
		String article_content = request.getParameter("article_content");
		String m_id = request.getParameter("m_id");
		
		System.out.println("EditCon"+article_content);
		
		dto.setArticle_seq(article_seq);
		dto.setArticle_title(article_title);
		dto.setArticle_content(article_content);
		dto.setM_id(m_id);
		
		request.setAttribute("dto", dto);
		
		return "edit";
	}

}
