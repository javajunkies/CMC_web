<%@ page language="java" import="CMC2.*" import="java.util.*"%>


     <%
	  AdminController ac = (AdminController) session.getAttribute("admincontroller");
      ac.editUniversity(request.getParameter("School"), request.getParameter("State"), request.getParameter("Location"), request.getParameter("Control"),
    		  request.getParameter("NumberOfStudents"), request.getParameter("PercentFemales"), request.getParameter("SATVerbal"), request.getParameter("SATMath"),
    		  request.getParameter("S")
      response.sendRedirect("adminHome.jsp");
	%>
	
