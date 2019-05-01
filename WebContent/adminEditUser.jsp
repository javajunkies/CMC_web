<%@page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
	String uname = ai.getCurrentUser().getUsername();
	String username = request.getParameter("userName");
	User user = ai.viewUserInfo(username);
%>
<body>
	<div class="container">
		<div class="nav">
			<span><a href="adminHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"ViewAccount.jsp\">Edit Account</a>" + "<a href=\"logoutAdmin_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("temp_index.jsp");
					}
				%>

			</div>
		</div>
		<center>
			<div class=inside>
<head>

<title>Admin Edit User Form</title>
</head>
<br>
Edit User:<%=username%><br>
<br>

<form method="post" action="adminEditUser_action.jsp" name="adminEditUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly" name="Username" value="<%=user.getUsername()%>"><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="First Name" value="<%=user.getFirst()%>"><br>

</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="Last Name" value="<%=user.getLast()%>"> </td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" value="<%=user.getPassword()%>"> </td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type" value="<%=user.getUsertype()%>"> </td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value="<%=user.getStatus()%>"> </td>
</tr>
<tr>



<tr>
<td style="vertical-align: top;"><input value="Edit"name="Edit" type="submit"></td>
<td style="vertical-align: top;"><input value="Reset"name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>



			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>