package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class UpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String article_title = request.getParameter("article_title"); // 사용자가 입력한 제목
		String article_content = request.getParameter("article_content"); // 사용자가 입력한 본문
		String article_seq = request.getParameter("article_seq"); // seq 어떻게 빼올지
		
		CommunityDTO dto = new CommunityDTO();
		dto.setArticle_title(article_title);	
		dto.setArticle_content(article_content);
		dto.setArticle_seq(article_seq);
		// dto에 담기
		
		CommunityDAO dao = new CommunityDAO();
		int row = dao.update(dto); // dao에 있는 update 기능 실행
		if (row > 0) {
			return "redirect:/GoView.do?article_seq="+article_seq+"&article_title="+article_title+"&article_content="+article_content; // row가 0보다 크면 정상 실행. 
			
		}else {
			return "redirect:/Update.do"; // 실패~~~~~ 
		}
		
		
	}

}
