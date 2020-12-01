import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Diviber extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response )
		throws IOException, ServletException {
		String str1 = request.getParameter("Num1");
		String str2 = request.getParameter("Num2");
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2);
		int result = num1 /num2;
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>나눗셈 프로그램</title>");
		out.println("</head>");
		
		out.println("<body>");
		out.printf("<h1>%d / %d = %d</h1>",num1,num2,result);
		out.println("</body>");
		out.println("</html>");
	}
	}