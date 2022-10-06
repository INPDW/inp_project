package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

import javax.swing.JOptionPane;

public class LoginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String m_id = request.getParameter("m_id"); // 사용자가 입력한 아이디
		String m_pw = request.getParameter("m_pw"); // 사용자가 입력한 비밀번호

		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		
		
		dto.setM_id(m_id);
		dto.setM_pw(m_pw);
		// dto에 담음.

		MemberDTO row = dao.login(dto); // dao의 login기능 실행
		if (row != null) {

			
			session.setAttribute("m_id", m_id);

			return "main"; // 로그인 성공 ~~~ 메인페이지로
			
			
			

		} else {
			
			return "login"; // 로그인 실패 ~~~ 다시 로그인 페이지로
			
		}

	}

}
