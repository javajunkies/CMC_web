<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>
	
  <%
    AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
	String username = request.getParameter("Username");
	String first = request.getParameter("First Name");
    String last = request.getParameter("Last Name");
    String pass = request.getParameter("Password");
    char t = request.getParameter("Type").charAt(0);
    char s = request.getParameter("Status").charAt(0); 
	int result = ai.adminEditUser(username, first, last, pass, t, s);
	response.sendRedirect("viewUsers.jsp?Result=" + result);
   %>

