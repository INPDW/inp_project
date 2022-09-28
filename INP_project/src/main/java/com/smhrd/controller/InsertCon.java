package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Board;
import com.smhrd.model.DAO;

public class InsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		//0. MultipartRequest 객체 생성하기 
		//1. request 
		//2. 어디에 저장할 것인지
		String savePath = request.getServletContext().getRealPath("resources/image"); 
		//3. 용량제한 
		int maxSize = 1024 *1024 *5; // 단위 : byte 
		//4. 인코딩 타입
		String encoding = "EUC-KR";
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding,
					new DefaultFileRenamePolicy());//파일 이름 중복처리 
			
			// 파일업로드 기본적인 
		} catch (IOException e) {
				e.printStackTrace();
		}
		//업로드한 파일의 이름 가져오기 
		String image = multi.getFilesystemName("file");
		
       //1, request 안에 들어있는 파라미터 수집 
	   // file을 upload할 때에는 multi로부터 파라미터 수집해야한다. 
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");
         
		// 2. DAO로 보내줄 데이터 하나로 묶기
		Board board = new Board();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		board.setImage(image);
		// *********기본생성자를 활용하여 setter 메소드로 채워주기*******
		// 3. DB에 데이터 추가
		DAO dao = new DAO();
		int row = dao.insert(board);
		if (row > 0) {
			// DAO를 활용해서 결과값을 받아옴 ---> 별도로 페이젱 전송할 필요가 없다면
			// ---> redirect 방식
			// redirect 요청시 앞에 redirect:/를 붙이자 
			return "redirect:/SelectAll.do";
			
		}else {
			return "redirect:/Insert.do"; //컨트롤러로 가능경우 리다이렉트를 사용 
		}
		

		
		
		
		
	}

}
