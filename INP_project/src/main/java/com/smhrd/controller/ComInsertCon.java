package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;

public class ComInsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String cmt_content = request.getParameter("cmt_content");
		String m_id = request.getParameter("m_id");
		
		CommentDTO dto = new CommentDTO();
		CommentDAO dao = new CommentDAO();
		
		dto.setCmt_content(cmt_content);
		dto.setM_id(m_id);
		
		dao.comInsert(dto);
		
		return "게시물 상세보기 페이지";
	}

}
