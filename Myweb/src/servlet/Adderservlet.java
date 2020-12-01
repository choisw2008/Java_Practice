package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Adderservlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response )
		throws IOException, ServletException,NullPointerException {
		//페이지를 넘겨주는 인풉 값들
		String str1 = request.getParameter("Num1");
		String str2 = request.getParameter("Num2");
		
		//문장열을 가지고 더하기 계산을 해야하므로 숫자호 변환하여 저장한후 계산한다.
		
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2);
		int sum = num1 + num2;
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");		
		out.println("<title>덧셈결과 화면 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>");
		out.printf("%d+%d=%d",num1,num2,sum);
		out.println("</h1>");
		out.println("</body>");
		out.println("</html>");
		
	}
}