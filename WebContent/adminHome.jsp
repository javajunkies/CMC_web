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
	String aname = ai.getCurrentUser().getUsername();
%>
<body>
	<div class="container">
		<div class="nav">
			<span><a href="adminHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (aname != null) {
						out.print("<button class=\"dropbtn\">" + aname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"ViewAccount.jsp\">Edit Account</a>"
								+ "<a href=\"logoutAdmin_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("temp_index.jsp");
					}
				%>

			</div>
		</div>
		<center>
			<div class=inside>

				Welcome Admin:
				<%
				out.println(ai.getCurrentUser().getUsername());
			%><br> <span
					style="text-decoration: underline;"><a
					href="viewSchools.jsp">Manage Universities</a><br> <a
					href="viewUsers.jsp">Manage Users</a><br> </span>



			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>

