<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%UserController uc = (UserController)session.getAttribute("username");
 String uname = uc.getCurrentUser().getUsername();
%>
<body>
	<div class="container">
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
		</div>


		
		<!-- Paste here -->




	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>


