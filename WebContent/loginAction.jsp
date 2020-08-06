<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login</title>
</head>
<body>
	<%
	String userID =null;
	if(session.getAttribute("userID") != null){
		userID =(String) session.getAttribute("userID");
	}
	if(userID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href ='index.html'");
		script.println("</script>");
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(user.getUserID(), user.getUserPassword());
	if (result ==1){
		session.setAttribute("userID", user.getUserID());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('WELCOME')");
		script.println("location.href='index.html'");
		script.println("</script>");
	}
	else if (result==0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('PASSWORD ERRORS')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if (result==-1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('PLEASE JOIN US')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if (result==-2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('ERROR')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>