import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DataError extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response )
		throws IOException, ServletException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>에러 화면</title>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("<ㅗ1>에러가 발생 하였습니다.</ㅗ1>");
		out.println("</body>");
		out.println("</html>");
		}
	}