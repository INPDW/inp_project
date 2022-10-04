package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class SearchContentCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		CommunityDAO dao = new CommunityDAO();
		String article_content = request.getParameter("alticle_content");
		ArrayList<CommunityDTO> list = dao.searchContent(article_content);
		
		
		request.setAttribute("list", list); // 객체바인딩!!!

		return "결과 페이지";
	}

}
