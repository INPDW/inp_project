package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FlaskImageCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "FlaskImage2";
	}

}
