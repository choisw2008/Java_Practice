package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class hunder extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response )
		throws IOException, ServletException{
		//1부터100까지 누적된 정수의 값을 화면에 보여준다.
		int total = 0;
		for (int cnt = 1; cnt <=100; cnt++) {
			total += cnt;
		}
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<HTML>");
			out.println("<HEAD>");
			out.println("<title>1부처 100까지 더하는 서블릿</title>");
			out.println("</HEAD>");
			out.println("<BODY>");
			
			out.println("<h1>");
			out.printf("1부터 100까지의 합은 %d 입니다.",total);
			out.println("</h1>");
			
			out.println("</BODY>");
			out.println("</HTML>");
		
		
	}

}
