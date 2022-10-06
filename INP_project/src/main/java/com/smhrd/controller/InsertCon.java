package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class InsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		
		String article_title = request.getParameter("article_title"); // 사용자가 쓴 제목
		String article_content = request.getParameter("article_content"); // 사용자가 쓴 본문
	
		//session.setAttribute("m_id", m_id);
		// String m_id = ;
         
		//System.out.println(m_id);
		CommunityDTO dto = new CommunityDTO();
		
		dto.setArticle_title(article_title);
		dto.setArticle_content(article_content); 
		dto.setM_id("admin"); // dto에 채워줌
		
		
		CommunityDAO dao = new CommunityDAO();
		int row = dao.insert(dto); // dao에 insert 기능 실행
		if (row > 0) {
			return "redirect:/SelectAll.do"; // row값이 0보다 크면 글을 쓰기 성공. 커뮤니티 메인으로
			
		}else {
			return "redirect:/Insert.do"; // 실패. 다시 글쓰기 페이지로
		}
		

		
		
		
		
	}

}
