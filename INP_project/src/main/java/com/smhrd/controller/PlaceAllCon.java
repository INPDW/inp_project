package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.PlaceDAO;
import com.smhrd.model.PlaceDTO;

public class PlaceAllCon implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String place_seq = request.getParameter("place_seq");
		PlaceDAO dao = new PlaceDAO();
		ArrayList<PlaceDTO> list = dao.PlaceAll(place_seq);
		
		request.setAttribute("list", list);
		
		return "글 상세보기 페이지";
	}

}



