package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.DAO;

public class DeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//1.파라미터 수집 
		String board_num = request.getParameter("boardnum");
		//쿼리스트링-> 겟방식, 
        //2. xml, dao에 sql문을 사용할 수 있도록 정의 
		DAO dao = new DAO();
		int row = dao.delete(board_num);

		return "redirect:/SelectAll.do";

	}

}
