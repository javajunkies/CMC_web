<%@page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>

<% 
  AdminInteraction ai = (AdminInteraction)session.getAttribute("username");

  char t = request.getParameter("Type").charAt(0);
  String username = request.getParameter("FirstName");
  //char s = request.getParameter("Status").charAt(0);
  //User user = new User(request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Username"),request.getParameter("Password"), t, s); 
  ai.addNewUser(username, request.getParameter("LastName"), request.getParameter("Username"), request.getParameter("Password"), t);
%>