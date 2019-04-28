<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%-- <%UserController uc = (UserController)session.getAttribute("username");
 String uname = uc.getCurrentUser().getUsername();
%> --%>
<body>
<%-- 	<div class="container">
		<div class="nav">
			<span class="CMC">CMC</span>
				<div class="dropdown">
				<%
				if (uname != null)
				{
					out.print("<button class=\"dropbtn\">" + uname + "</button>" +
					"<div class= \"dropdown-content\">" + 
					"<a href=\"edit_action.jsp\">Edit Account</a>" + 
					"<a href=\"logout_action\">Logout</a>");
				}
				else
				{
					response.sendRedirect("index.jsp");
				}
				%>
				</div>
			</div>
		</div> --%>
<form action="UserEditAccountAction.jsp" name="View/Edit"> <input
name="Edit" value="Edit User" type="submit"><input name="Reset"
value="Reset" type="reset"><br>
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="First" value="..."><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="Last" value="..."><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Username" value="..."><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Pass" value="..."><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Type" value="..."><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>

	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>


