package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class IDCheckCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String m_id = request.getParameter("m_id"); // 아이디 중복확인 클릭하면 사용자가 입력한 아이디 받아옴
		
		MemberDAO dao = new MemberDAO();
		MemberDTO result = dao.idCheck(m_id); // dao에 있는 idcheck 실행
		
		if(result==null) {
			return "회원가입가능창"; // 회원가입 가능합니다 뜨게하기
		}else {					
			return "아이디중복창"; // 중복된 아이디입니다 뜨게하기
		}
	
		
		
	}

}
