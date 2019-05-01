<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>

     <%
 	AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
 	
 	String school = request.getParameter("School");
 	String state = request.getParameter("State");
 	String location = request.getParameter("Location");
 	String control = request.getParameter("Control");
 	int numStudents = Integer.parseInt(request.getParameter("NumberOfStudents"));
 	double percentFemale = Double.parseDouble(request.getParameter("PercentFemales"));
 	double SATVerbal = Double.parseDouble(request.getParameter("SATVerbal"));
 	double SATMath = Double.parseDouble(request.getParameter("SATMath"));
 	double expenses = Double.parseDouble(request.getParameter("Expenses"));
 	double percentFinancialAid = Double.parseDouble(request.getParameter("PercentFinancialAid"));
 	int numApplicants = Integer.parseInt(request.getParameter("NumberOfApplicants"));
 	double percentAdmitted = Double.parseDouble(request.getParameter("PercentAdmitted"));
 	double percentEnrolled = Double.parseDouble(request.getParameter("PercentEnrolled"));
 	int academicsScale = Integer.parseInt(request.getParameter("AcademicsScale"));
 	int socialScale = Integer.parseInt(request.getParameter("SocialScale"));
 	int qualityOfLife= Integer.parseInt(request.getParameter("QualityOfLifeScale"));
 	
 	ai.editUniversity(school, state, location, control, numStudents, percentFemale, SATVerbal, SATMath, expenses, percentFinancialAid, numApplicants, percentAdmitted, percentEnrolled, academicsScale, socialScale, qualityOfLife);
 	response.sendRedirect("viewSchools.jsp");
	%>
	
