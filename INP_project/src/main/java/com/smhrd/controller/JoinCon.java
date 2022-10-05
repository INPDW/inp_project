package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class JoinCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String m_id = request.getParameter("m_id"); // 사용자가 입력한 아이디
		String m_pw = request.getParameter("m_pw"); // 사용자가 입력한 비밀번호
		String m_nick = request.getParameter("m_nick"); // 사용자가 입력한 닉네임

		MemberDTO dto = new MemberDTO(); 

		dto.setM_id(m_id);
		dto.setM_pw(m_pw);
		dto.setM_nick(m_nick);
		// dto로 묶음

		MemberDAO dao = new MemberDAO();

		int row = dao.join(dto); // dao의 join기능 실행

		if (row > 0) {
			return "main"; // 회원가입 성공. 메인페이지로 ~~

		} else {
			return "join"; // 회원가입 실패. 회원가입페이지로~~
		}

	}

}
