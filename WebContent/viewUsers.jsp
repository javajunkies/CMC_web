<%@ page language="java" import="CMC2.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="checkAdminLoggedIn.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%
	AdminInteraction ui = (AdminInteraction) session.getAttribute("username");
	String uname = ui.getCurrentUser().getUsername();
%>
<body>
	<div class="container">
		<div class="nav">
			<span><a href="adminHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"ViewAccount.jsp\">Edit Account</a>"
								+ "<a href=\"logout_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("temp_index.jsp");
					}
				%>

			</div>
		</div>
		<center>
			<div class=inside>


				<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC</title>
</head>
<body>
<%
		
		String r = request.getParameter("Result");
		if(r != null && r.equals("1")){
			out.println("User was successfully edited."+ "<br> <br>");
		} else if(r != null){
			out.println("Edit unsuccessful, please try again." + "<br><br>");
		}
	%>
<table style="text-align: left; width: 1069px; height: 480px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
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
			"<td> <form method=\"post\" action=\"adminEditUser.jsp\" name=\"adminEdit\" > <input type=\"submit\" class=\"button\" value=\"Edit User\"> <input name=\"userName\" value=\""+ admin.viewUsers().get(i).getUsername() + "\" type=\"hidden\"> </td> </form>" +
		"</tr>");
	}
	%>
</tbody>
</table>
	</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>

