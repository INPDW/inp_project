package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class UpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String alticle_title = request.getParameter("alticle_title"); // 사용자가 입력한 제목
		String alticle_content = request.getParameter("alticle_content"); // 사용자가 입력한 본문

		CommunityDTO dto = new CommunityDTO();
		dto.setArticle_title(alticle_title);	
		dto.setAlticle_content(alticle_content);
		// dto에 담기
		
		CommunityDAO dao = new CommunityDAO();
		int row = dao.update(dto); // dao에 있는 update 기능 실행
		if (row > 0) {
			return "상세글페이지"; // row가 0보다 크면 정상 실행. 
			
		}else {
			return "redirect:/Update.do"; // 실패~~~~~ 
		}
		
		
	}

}
