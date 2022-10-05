package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;

public class ComAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String article_seq = request.getParameter("article_seq");
		CommentDAO dao = new CommentDAO();
		
		ArrayList<CommentDTO> list = dao.comAll(article_seq);
		
		request.setAttribute("list", list);
		
		return "글 상세보기 페이지";
	}

}
