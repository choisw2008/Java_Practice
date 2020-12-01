<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="bookstore.master.BookStoreDAO" %>
<%@ page import="bookstore.master.BookDTO" %>
<%@ page import="bookstore.master.BscodeDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%
request.setCharacterEncoding("UTF-8");

//���� ���� �����´�.
String managerID = (String)session.getAttribute("managerID");

//���� ���� ������ �����۾��� �� �� ����. �α��� �������� �̵���Ų��.
if(managerID == null || managerID.equals("")) {
	PrintWriter pw = response.getWriter();
	pw.println("<script>");
	pw.println("alert('�α����� �Ͻ� �Ŀ� ����Ͻ� �� �ֽ��ϴ�.')");
	pw.println("location.href='../logon/managerLoginForm.jsp?useSSl=false'");
	pw.println("</script>");
}

//����Ʈ ���������� �Ѱ��� book_id�� book_kind�� �����´�.
int book_id = Integer.parseInt(request.getParameter("book_id"));
String book_kind = request.getParameter("book_kind");

//DAO �ν��Ͻ��� �����´�.
BookStoreDAO bookStoreDAO = BookStoreDAO.getInstance();

//���� Ÿ�Կ� ���� �����͸� �����´�.\
List<BscodeDTO> bookTypes = null;
BscodeDTO bookType = null;
bookTypes = bookStoreDAO.getBookTypes();

//book_id�� �ش��ϴ� �����͸� ��� �����´�.
BookDTO book = bookStoreDAO.getBook(book_id);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
