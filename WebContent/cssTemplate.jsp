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
			<span class="CMC">CMC</span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"edit_action.jsp\">Edit Account</a>" + "<a href=\"logout_action\">Logout</a></div>");
					} else {
						response.sendRedirect("index.jsp");
					}
				%>

			</div>
		</div>
		<center>
			<div class=inside>

		
		<!-- Paste here -->



			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>


