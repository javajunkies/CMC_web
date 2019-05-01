
<%@ page language="java" import="CMC2.*" import="java.util.*"%>
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
%>
<body>
	<div class="container">
		<div class="nav">
			<span><a href="userHome.jsp" class="CMC">CMC</a></span>
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



<br>
<form method="post" action="adminAddUser_action.jsp" name="addUser"><br>
<table>
<tbody>
<tr>
<td>First Name<br>
</td>
<td width=50%><input name="FirstName">
</td>
</tr>
<tr>
<td>Last Name<br>
</td>
<td><input name="LastName">
</td>
</tr>
<tr>
<td>Username<br>
</td>
<td><input name="Username"> </td>
</tr>
<tr>
<td>Password<br>
</td>
<td><input name="Password"> </td>
</tr>
<tr>
<td>Type<br>
</td>
<td><input name="Type"> </td>
</tr>
<tr>
<td>Status<br>
</td>
<td><input name="Status"> </td>
</tr>

<tr>
<td><input value="Add"
name="Add" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input value="Reset"
name="Reset" type="reset"></td>
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