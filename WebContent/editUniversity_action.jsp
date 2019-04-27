<%@ page language="java" import="CMC2" import="java.util.*"%>


     <%
	  AdminController ac = (AdminController) session.getAttribute("admincontroller");
      char t = request.getParameter("Type").charAt(0);
      char s = request.getParameter("Status").charAt(0);
      User user = new User(request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Username"),request.getParameter("Password"), t, s); 
      uc.editUniversity(user);
      response.sendRedirect("adminHome.jsp");
	%>