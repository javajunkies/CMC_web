<%@ page language="java" import="CMC2.*" import="java.util.*" %>

<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<% UserInteraction ui =(UserInteraction) session.getAttribute("username"); %>
Welcome Admin: <% out.println(ui.getCurrentUser().getUsername());%><br>

<a target="_blank" href="ManageUniversities.jsp">Manage Universities</a><br>
<a href="ManageUsers.jsp" target="_blank">Manage Users</a><br>

</body>
</html>