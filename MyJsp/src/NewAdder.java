import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewAdder extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response )
		throws IOException, ServletException{
		//2개의 슛자를 입력받아 더한후에 화면에출력
		//입섹션 처리를 하는 페이지를 별도의 서블릿으로 만든다.
		
		try {
			String str1 = request.getParameter("Num1");
			String str2 = request.getParameter("Num2");
			int num1 = Integer.parseInt(str1);
			int num2 = Integer.parseInt(str2);
			int result = num1+num2;
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head>");
			out.println("<title>덧셈 프로그램</title>");
			out.println("</head>");
			
			out.println("<body>");
			out.printf("<h1>%d + %d = %d</h1>",num1,num2,result);
			out.println("</body>");
			out.println("</html>");
		} catch (NumberFormatException e) {
			RequestDispatcher dispatcher
			 = request.getRequestDispatcher("data-error");
			dispatcher.forward(request, response);
		}
	}
	}