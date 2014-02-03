<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet JSP Login</title>
</head>
<body>
	<h1 align="center">This is a Servlet JSP Loin page</h1>
	<form action="login" method="post">
		<table align="center">
			<tr>
				<td>username:</td>
				<td><input name="usernameTB" type="text"></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input name="passwordTB" type="password"></td>
			</tr>
			<tr style="color: red">
				<td colspan="2">
					<%
						String errorMessage = (String) request.getAttribute("errMsg");
						if (errorMessage != null) {
					%> <%=errorMessage%> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<td><input value="login" type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>