<%@page language="java" import="CMC2.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
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
								 + "<a href=\"logout_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("temp_index.jsp");
					}
				%>

			</div>
		</div>
		<center>
			<div class=inside>
			
				Welcome User: <% out.println(ui.getCurrentUser().getUsername());%><br>
				
				<span style="text-decoration: underline;"><a href="ViewAccount.jsp">Manage My Profile</a><br>
				<a href="ViewSaved.jsp">Manage My Saved Schools</a><br>
				<a href="search.jsp">Search for Schools</a><br>
				<a href="compareFrames.jsp">Compare</a>
				</span>
				


			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>
