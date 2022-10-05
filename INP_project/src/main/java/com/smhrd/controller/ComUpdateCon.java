package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;

public class ComUpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String cmt_content = request.getParameter("cmt_content");
		
		CommentDTO dto = new CommentDTO();
		
		dto.setCmt_content(cmt_content);
		
		CommentDAO dao = new CommentDAO();
		
		dao.comUpdate(dto);
		
		return "게시물 상세보기 페이지";
		
		
		
	}

}
