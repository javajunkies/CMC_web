<%@ page language="java" import="CMC2.*" import="java.util.*" %>

<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<% AdminInteraction ai =(AdminInteraction) session.getAttribute("username"); %>
Welcome Admin: <% out.println(ai.getCurrentUser().getUsername());%><br>

<a target="_blank" href="viewSchools.jsp">Manage Universities</a><br>
<a href="viewUsers.jsp" target="_blank">Manage Users</a><br>

</body>
</html>