package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class SearchTitleCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		CommunityDAO dao = new CommunityDAO();
		String article_title = request.getParameter("alticle_title");
		ArrayList<CommunityDTO> list = dao.searchTitle(article_title);		
		
		request.setAttribute("list", list); 

		return "결과 페이지";
	}

}
