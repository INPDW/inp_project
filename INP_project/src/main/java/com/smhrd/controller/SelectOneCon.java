package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.DAO;

public class SelectOneCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {


		// 1. request 안에 파라미터 수집
		String board_num = request.getParameter("boardnum");

		// 2, DB에서 게시글 조회
		DAO dao = new DAO();
		Board board = dao.selectOne(board_num);

		request.setAttribute("board", board); // 객체바인딩!!! --> scope 네이밍, 담아온 조회 결과
		// 3. BoardContent.jsp로 페이지를 이동하면서 조회해온 데이터 보내주기
		// request scope 데이터를 담아서 이동
		// redirect( request scope 유지 xxx)
		// forward(request scope 유지 ooo)
	     return "BoardContent";
		
	
		// 3. jsp로 페이지를 이동하면서 조회해온 데이터 보내주기

	
	
	}

}
