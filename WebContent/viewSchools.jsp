<%@ page language="java" import="CMC2.*" import="java.util.*;" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Schools</title>
</head>
<body>
<table style="width=100%">
	<tr>
		<th>School</th>
		<th>State</th>
		<th>Location</th>
		<th>Control</th>
		<th>NumberOfStudents</th>
		<th>PercentFemales</th>
		<th>SATVerbal</th>
		<th>SATMath</th>
		<th>Expenses</th>
		<th>PercentFinancialAid</th>
		<th>NumberOfApplicants</th>
		<th>PercentAdmitted</th>
		<th>PercentEnrolled</th>
		<th>AcademicsScale</th>
		<th>SocialScale</th>
		<th>QualityOfLifeScale</th>
	</tr>
	<%
	DBController db = new DBController();
	for (int i = 0; i < db.getAllUniversities().size(); i++) { %>
		<tr>
			<th><%db.getAllUniversities().get(i).getSchool(); %></th>
			<th><%db.getAllUniversities().get(i).getState(); %></th>
			<th><%db.getAllUniversities().get(i).getLocation(); %></th>
			<th><%db.getAllUniversities().get(i).getControl(); %></th>
			<th><%db.getAllUniversities().get(i).getNumStudents();; %></th>
			<th><%db.getAllUniversities().get(i).getPercentFemale(); %></th>
			<th><%db.getAllUniversities().get(i).getSATVerbal(); %></th>
			<th><%db.getAllUniversities().get(i).getSATMath(); %></th>
			<th><%db.getAllUniversities().get(i).getExpenses(); %></th>
			<th><%db.getAllUniversities().get(i).getPercentFinancialAid(); %></th>
			<th><%db.getAllUniversities().get(i).getNumApplicants(); %></th>
			<th><%db.getAllUniversities().get(i).getPercentAdmitted(); %></th>
			<th><%db.getAllUniversities().get(i).getPercentEnrolled(); %></th>
			<th><%db.getAllUniversities().get(i).getAcademicsScale(); %></th>
			<th><%db.getAllUniversities().get(i).getSocialScale(); %></th>
			<th><%db.getAllUniversities().get(i).getQualityOfLife(); %></th>
		</tr>
	<% } %>
</table>
</body>
</html>