package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Board;
import com.smhrd.model.DAO;

public class SelectAllCon implements Controller {
      // 실행될 메서드 정의 
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	// mybatis 사용하려면 3개의 설정 값을 잡아주기!!
	// 1. mybatis-config.xml
	// -----> 데이터베이스 동적로딩을 관리해 주는 파일

	// DAO 불러주기
	DAO dao = new DAO();
	ArrayList<Board> list = dao.selectAll();
	request.setAttribute("list", list); // 객체바인딩!!!

	// 결과값을 jsp에 전달하기!!!
	// forward 방식 사용하기
	// request.getRequestDisptcher("이동할 파일명");
	 return "Main";
	
	// 계속 보자


   }
}
