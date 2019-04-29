<%@ page language="java" import="CMC2.*" import="java.util.*" %>

<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<% UserInteraction ui = (UserInteraction) session.getAttribute("username"); %>
Welcome User: <% out.println(ui.getCurrentUser().getUsername());%><br>

<span style="text-decoration: underline;"><a href="UserProfile.jsp"
target="_blank">Manage My Profile</a><br>
<a href="SavedSchools.jsp" target="_blank">Manage My Saved Schools</a><br>
<a href="search.jsp" target="_blank">Search for Schools</a><br>
</span>

</body>
</html>