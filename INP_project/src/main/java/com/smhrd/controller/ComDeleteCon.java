package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommentDAO;

public class ComDeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String cmt_seq = request.getParameter("cmt_seq");
		
		CommentDAO dao = new CommentDAO();
		dao.comDelete(cmt_seq);
		
		
		
		return "게시물 상세보기 페이지";
	}

}
