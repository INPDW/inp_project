package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;

public class DeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String article_seq = request.getParameter("article_seq"); // 글번호 가져오기
		
	
		
		CommunityDAO dao = new CommunityDAO();
		dao.delete(article_seq); // 삭제기능 실행
		
		

		return "redirect:/SelectAll.do"; // 커뮤니티 메인으로

	}

}
