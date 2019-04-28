<%@ page language="java" import="CMC2.*" import="java.util.*"%>


     <%
	  AdminController ac = (AdminController) session.getAttribute("admincontroller");
      char t = request.getParameter("Type").charAt(0);
      char s = request.getParameter("Status").charAt(0); 
      ac.editUser(request.getParameter("Username"), request.getParameter("FirstName"), request.getParameter("LastName"), request.getParameter("Password"), t, s);
      response.sendRedirect("adminHome.jsp");
	%>