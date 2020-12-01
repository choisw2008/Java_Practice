<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="bookstore.master.BookStoreDAO" %>
<%@ page import="bookstore.master.BookDTO" %>
<%@ page import="bookstore.master.BscodeDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%
request.setCharacterEncoding("UTF-8");

//세션 값을 가져온다.
String managerID = (String)session.getAttribute("managerID");

//세선 값이 없으면 수정작업을 할 수 없다. 로그인 페이지로 이동시킨다.
if(managerID == null || managerID.equals("")) {
	PrintWriter pw = response.getWriter();
	pw.println("<script>");
	pw.println("alert('로그인을 하신 후에 사용하실 수 있습니다.')");
	pw.println("location.href='../logon/managerLoginForm.jsp?useSSl=false'");
	pw.println("</script>");
}

//리스트 페이지에서 넘겨준 book_id와 book_kind를 가져온다.
int book_id = Integer.parseInt(request.getParameter("book_id"));
String book_kind = request.getParameter("book_kind");

//DAO 인스턴스를 가져온다.
BookStoreDAO bookStoreDAO = BookStoreDAO.getInstance();

//도서 타입에 대한 데이터를 가져온다.\
List<BscodeDTO> bookTypes = null;
BscodeDTO bookType = null;
bookTypes = bookStoreDAO.getBookTypes();

//book_id에 해당하는 데이터를 모두 가져온다.
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
