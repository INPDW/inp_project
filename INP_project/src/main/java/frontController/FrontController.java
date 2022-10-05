package frontController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.ComAllCon;
import com.smhrd.controller.ComDeleteCon;
import com.smhrd.controller.ComInsertCon;
import com.smhrd.controller.ComUpdateCon;
import com.smhrd.controller.Controller;
import com.smhrd.controller.DeleteCon;
import com.smhrd.controller.GoInsertCon;
import com.smhrd.controller.IDCheckCon;
import com.smhrd.controller.InsertCon;
import com.smhrd.controller.JoinCon;
import com.smhrd.controller.LoginCon;
import com.smhrd.controller.PlaceAllCon;
import com.smhrd.controller.SearchContentCon;
import com.smhrd.controller.SearchTitleCon;
import com.smhrd.controller.SelectAllCon;
import com.smhrd.controller.SelectOneCon;
import com.smhrd.controller.UpdateCon;

// *.do  -> .do가 붙은 모든 요청을 이 frontController에서 처리하겠다. 
// 어떻게 구분할 것인가? 
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, Controller> mappings; // 파이썬 딕셔너리랑 비슷하다고 생각

	// Servlet이 생성되었을 때, 생성되는 메서드
	// 한 번만 실행됨
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Servlet 생성됨");
		// key- value 형식으로 구성되어 있는 자료구조 HashMap
		// if <<< HashMap
		mappings = new HashMap<>();
		// HashMap의 key와 value 집어넣기
		mappings.put("/SelectAll.do", new SelectAllCon());
		mappings.put("/GoInsert.do", new GoInsertCon());
		mappings.put("/Insert.do", new InsertCon());
		mappings.put("/SelectOne.do", new SelectOneCon());
		mappings.put("/Update.do", new UpdateCon());
		mappings.put("/Delete.do", new DeleteCon());
		mappings.put("/Join.do", new JoinCon());
		mappings.put("/Login.do", new LoginCon());
		mappings.put("/IDCheck.do", new IDCheckCon());
		mappings.put("/SearchTitle.do", new SearchTitleCon());
		mappings.put("/SearchContent.do", new SearchContentCon());
		mappings.put("/ComAll.do", new ComAllCon());
		mappings.put("/ComDeleteCon.do", new ComDeleteCon());
		mappings.put("/ComInsertCon.do", new ComInsertCon());
		mappings.put("/ComUpdateCon.do", new ComUpdateCon());
		mappings.put("/PlaceAll.do", new PlaceAllCon());
		
	}

	// 요청할때마다 뜨는게 아니라 한 번 밖에 일어나지 않음 -> 한번만 실행
	// service : Client가 요청했을때 실행되는 메서드
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR"); // 이거 UTF-8로 바꿔야되는거 아닌가 ???

		// http://localhost:8094/BoardProject/SelectOne.do
		// http://localhost:8094/BoardProject/GoInsert.do
		// /BoardProject/SelectOne.do -> URI //SelectOne만
		String url = request.getRequestURI();
		// ContextPath : /BoardProject
		String cpath = request.getContextPath();

		// command : /SelectOne.do -> 떼어서
		// hello -> substring(2) -> llo
		String command = url.substring(cpath.length());
		String nextView = null;


		Controller con = null;
		// 요청을 구분해서 각각의 기능 실행
		// HashMap.get(key);
		con = mappings.get(command);
		// ==================================================

		nextView = con.execute(request, response);

		// 페이지 이동 if문 바깥으로
		// nextView가 redirect:/를 포함하고 있는지??
		if (nextView.contains("redirect:/")) {
			// redirect
			// redirect:/selectAll.do
			// ["redirect", "SellectALL.do][
			response.sendRedirect(nextView.split(":/")[1]);
		} else {
			// forward
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + nextView + ".jsp");
			rd.forward(request, response);

		}

	}
}
