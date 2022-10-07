package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.RouteDAO;
import com.smhrd.model.RouteDTO;

public class AjaxConja implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		PrintWriter out = null;
		try {
			response.setContentType("application/json; charset=UTF-8");
		    RouteDAO dao = new RouteDAO();
		    ArrayList<RouteDTO> changlist = dao.select_ja();
		
		   
		
		    Gson gson = new	Gson();
		    String jsonArrja = gson.toJson(changlist);
		    System.out.println(jsonArrja);
			out = response.getWriter();
			out.print(jsonArrja);
			
			
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        
		
		
		
		return null;
		
	}

}
