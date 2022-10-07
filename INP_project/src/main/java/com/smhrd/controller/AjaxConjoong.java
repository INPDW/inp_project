package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.RouteDAO;
import com.smhrd.model.RouteDTO;

public class AjaxConjoong implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
	    		
		//JSON형식으로 데이터 응답처리 
	    //JSON형식으로 응답 + 인코딩 방식 UTF- 8 설정
	   
		PrintWriter out = null;
		try {
			response.setContentType("application/json; charset=UTF-8");
		    RouteDAO dao = new RouteDAO();
		    ArrayList<RouteDTO> joonglist = dao.select_joong();
		
		   
		
		    Gson gson = new	Gson();
		    String jsonArrjoong = gson.toJson(joonglist);
		    System.out.println(jsonArrjoong);
			out = response.getWriter();
			out.print(jsonArrjoong);
			
			
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        
		
		
		
		return null;
	}

}