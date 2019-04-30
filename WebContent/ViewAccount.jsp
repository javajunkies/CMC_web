<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
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
								+ "<a href=\"ViewAccount.jsp\">Edit Account</a>" + "<a href=\"logout_action\">Logout</a>");
					} else {
						response.sendRedirect("index.jsp");
					}
				%>
			</div>
		</div>
	</div>
	
	<center>

	<div class="inside">
		<%
		User use = ui.getCurrentUser();
		
		String r = request.getParameter("Result");
		if(r != null && r.equals("1")){
			out.println("User sucessfully edited."+ "<br> <br>");
		}
		else if(r != null && r.equals("-1")){
			out.println("Invalid Password, please try again."+ "<br> <br>");
		}
		else if (r != null && r.equals("-2")){
			out.println("You left the first name blank, please try again."+ "<br> <br>");
		}
		else if(r != null && r.equals("-3")){
			out.println("You left the last name blank, please try again."+ "<br> <br>");
		}
	%>
	<form method="get" action="UserEditAccountAction.jsp" name="View/Edit">
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
				<tr>
				<td></td>
			<td><input name="Edit" value="Edit User" type="submit" class="button"> <input name="Reset" value="Reset" type="reset" class="button"> </td>
			</tr>
			</tbody>
		</table>
		<br>
	</form>
	</div>
	</center>
	<span class="footer">JavaJunkies</span>
</body>
</html>


