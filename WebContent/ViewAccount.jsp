<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Account</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%
	UserInteraction ui = (UserInteraction) session.getAttribute("username");
	String uname = ui.getCurrentUser().getUsername();
%>
<body>
	<div class="container">
		<div class="nav">
			<span><a href="userHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"ViewAccount.jsp\">Edit Account</a>" + "<a href=\"logout_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("temp_index.jsp");
					}
				%>
			</div>
		</div>
	</div>
	<%
		User use = ui.getCurrentUser();
		out.println("Edit user: " + use.getUsername());
	%>
	<center>
	<div class="inside">
	<form method=post action="UserEditAccountAction.jsp" name="View/Edit">
		<table>
			<tbody>
				<tr>
					<td style="vertical-align: top;">First Name<br>
					</td>
					<td style="vertical-align: top;"><input name="First"
						value="<%=use.getFirst()%>"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Last Name<br>
					</td>
					<td style="vertical-align: top;"><input name="Last"
						value="<%=use.getLast()%>"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input readonly="readonly"
						name="Username" value="<%=use.getUsername()%>"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Pass"
						value="<%=use.getPassword()%>"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<td style="vertical-align: top;"><input readonly="readonly"
						name="Type" value="<%=use.getUsertype()%>"><br></td>
				</tr>
				<td></td>
				<td><input name="Edit" value="Edit User" type="submit" class="button"> <input name="Reset" value="Reset" type="reset" class="button"> </td>
			</tbody>
		</table>
		<br>
	</form>
	</div>
	</center>
	<span class="footer">JavaJunkies</span>
</body>
</html>


