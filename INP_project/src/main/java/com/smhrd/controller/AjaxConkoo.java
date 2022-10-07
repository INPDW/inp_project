package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.RouteDAO;
import com.smhrd.model.RouteDTO;

public class AjaxConkoo implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	

	    		

		try {
		    response.setContentType("application/json; charset=UTF-8");

		    RouteDAO dao = new RouteDAO();
		    ArrayList<RouteDTO> koolist = dao.select_koo();
		   // request.setAttribute("koolist", koolist);
		    
		 
	
			PrintWriter out = null;
		   
		
		    Gson gson = new	Gson();
		    String jsonArrkoo = gson.toJson(koolist);
		    System.out.println(jsonArrkoo);
			out = response.getWriter();
			out.print(jsonArrkoo);
			
			
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        
		
		
		
		return null;
	}

}
