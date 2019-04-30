<%@ page language="java" import="CMC2.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC</title>
</head>
<body>
<form method="post" action="adminEditUser.jsp" name="adminEditUser"><br>
<table style="width=100%">
	<tr>
		<td style="vertical-align: top; text-align: center;">First name
		</td>
		<td style="vertical-align: top; text-align: center;">Last name
		</td>
		<td style="vertical-align: top; text-align: center;">Username
		</td>
		<td style="vertical-align: top; text-align: center;">Password
		</td>
		<td style="vertical-align: top; text-align: center;">Type
		</td>
		<td style="vertical-align: top; text-align: center;">Status
		</td>
	</tr>
	<%
	AdminInteraction admin = new AdminInteraction();
	for (int i = 0; i < admin.viewUsers().size(); i++) { 
		out.print("<tr>"+
			"<td style=\"vertical-align: top;\">" + admin.viewUsers().get(i).getFirst() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUsers().get(i).getLast() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUsers().get(i).getUsername() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUsers().get(i).getPassword() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUsers().get(i).getUsertype() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUsers().get(i).getStatus() + "</td>" +
			"<td style=\"vertival-align: top:\"> <button type = \"button\" onclick=\"location.href(\'adminEditUser.jsp\'); value=\"Redirect\">Edit</button> </td>" +
		"</tr>");
	}
	%>
</table>
</form>
</body>
</html>

