package com.itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/get_login")
public class GetLoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		/*
		 * 1.요청시 전송되는 파라메타받기
		 	 - 파라메타이름은 input element의 name속성의  값
		 		<form action="get_login" method="get">
					아이디:<input type="text" name="id"><br/>
					패에쓰:<input type="password" name="pass"><br/><br/>
				</form>	
		 */
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		if (id == null || pass == null || id.equals("") || pass.equals("")) {
			out.println("<h1>GET 로그인 결과</h1><hr>");
			out.println("<h3>아이디 또는 패스워드가 입력되지 않음</h3>");
			out.println("<a href='05-01.login_get.html'>다시 로그인</a>");
			return;
		}
		
		/*
		 * 2.서비스객체를 사용해서 업무(로그인)실행
		 * ----------
		 *  id | pass
		 * ----------
		 * xxxx|1111
		 * ----------
		 * yyyy|2222
		 * ----------
		 */
		boolean isMember1 = id.equals("xxxx") && pass.equals("1111");
		boolean isMember2 = id.equals("yyyy") && pass.equals("2222");
		
		/*
		 * 3.클라이언트로 출력
		 */
		out.println("<h1>GET 로그인 결과</h1><hr>");
		if (isMember1 || isMember2) {
			/* case 1 */
//			out.println("<h3>" + id + "님 로그인 성공</h3>");
//			out.println("<a href='index.html'>메인으로</a>");
			/* case 2 */
			response.sendRedirect("index.html");
		} else {
			out.println("<h3>" + id + "님 로그인 실패</h3>");
			out.println("<a href='05-01.login_get.html'>다시 로그인</a>");
		}
		
	}
}