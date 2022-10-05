package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommunityDAO;
import com.smhrd.model.CommunityDTO;

public class SelectAllCon implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
	CommunityDAO dao = new CommunityDAO();
	ArrayList<CommunityDTO> list = dao.selectAll(); // dao의 seleceAll 실행 후 ArrayList에 담아주기
	
	
	request.setAttribute("list", list); // 객체바인딩!!!

	 return "list";
	

   }
}
