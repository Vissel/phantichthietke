<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(session != null){
		Account account = (Account) session.getAttribute("account");
		if(account != null){
			out.print(account.getUsername() + account.getPassword());
		}else{
			response.sendRedirect("login.jsp");
		}
	}
		%>
</body>
</html>