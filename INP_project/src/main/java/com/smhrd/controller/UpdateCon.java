package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.DAO;

public class UpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
        //1. 파라미터 수집 
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String board_num = request.getParameter("boardnum");

		// 2. mapper.xml 파일과 DAO에 SQL문을 실행할 수 있도록 정의 
		//DAO로 보내줄 데이터 하나로 묶기
		Board board = new Board();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		board.setBoard_num(board_num);
		// *********기본생성자를 활용하여 setter 메소드로 채워주기*******
		// 3. 정의해둔 매서드 사용 
		DAO dao = new DAO();
		int row = dao.Update(board);
		if (row > 0) {
			// DAO를 활용해서 결과값을 받아옴 ---> 별도로 페이젱 전송할 필요가 없다면
			// ---> redirect 방식
			// redirect 요청시 앞에 redirect:/를 붙이자 
// 4.결과에 따라 view 선택 
			return "redirect:/SelectAll.do";
			
		}else {
			return "redirect:/Update.do"; //컨트롤러로 가능경우 리다이렉트를 사용 
		}
		
		
	}

}
