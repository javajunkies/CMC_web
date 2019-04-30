<%@ page language="java" import="CMC2.*" import="java.util.*" %>

<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>CMC</title>
</head>
<body>
<% UserInteraction ui = (UserInteraction) session.getAttribute("username"); %>
Welcome User: <% out.println(ui.getCurrentUser().getUsername());%><br>

<span style="text-decoration: underline;"><a href="ViewAccount.jsp">Manage My Profile</a><br>
<a href="ViewSaved.jsp">Manage My Saved Schools</a><br>
<a href="search.jsp">Search for Schools</a><br>
</span>

</body>
</html>