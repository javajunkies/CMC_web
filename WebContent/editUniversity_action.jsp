<%@ page language="java" import="CMC2.*" import="java.util.*"%>


     <%
	  AdminController ac = (AdminController) session.getAttribute("admincontroller");
      ac.editUniversity(request.getParameter("School"), request.getParameter("State"), request.getParameter("Location"), request.getParameter("Control"),
    		  request.getParameter("NumberOfStudents"), request.getParameter("PercentFemales"), request.getParameter("SATVerbal"), request.getParameter("SATMath"),
    		  request.getParameter("Expenses"), request.getParameter("PercentFinancialAid"), request.getParameter("NumberOfApplicants"), request.getParameter("PercentAdmitted"), 
    		  request.getParameter("PercentEnrolled"), request.getParameter("AcademicsScale"), request.getParameter("SocialScale"), request.getParameter("QualityOfLifeScale"));
      response.sendRedirect("adminHome.jsp");
	%>
	
