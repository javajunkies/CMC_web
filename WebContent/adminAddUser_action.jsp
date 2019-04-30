<%@page language="java" import="CMC2.*" import="java.util.*"%>


<% 
  AdminInteraction ai = (AdminInteraction)session.getAttribute("username");

  char t = request.getParameter("Type").charAt(0);
  char s = request.getParameter("Status").charAt(0);
  User user = new User(request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Username"),request.getParameter("Password"), t, s); 
  ai.addNewUser(user);
%>