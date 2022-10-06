package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class SelectOneCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		CommunityDTO dto = new CommunityDTO();
	
		String article_seq = request.getParameter("article_seq"); // 사용자가 클릭한 게시물 번호 받기

		CommunityDAO dao = new CommunityDAO();
		dao.cnt(article_seq);
		dto = dao.selectOne(article_seq); // dao의 selectOne 기능 실행

		request.setAttribute("dto", dto); // 객체바인딩!!! --> scope 네이밍, 담아온 조회 결과
		// 3. BoardContent.jsp로 페이지를 이동하면서 조회해온 데이터 보내주기
		// request scope 데이터를 담아서 이동
		// redirect( request scope 유지 xxx)
		// forward(request scope 유지 ooo)
	     return "view";
		
	
		// 3. jsp로 페이지를 이동하면서 조회해온 데이터 보내주기

	
	
	}

}
