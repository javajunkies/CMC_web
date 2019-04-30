<%@ page language="java" import="CMC2.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Schools</title>
</head>
<body>
<table style="text-align: left; width: 1069px; height: 480px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
	<tr>
		<td style="vertical-align: top; text-align: center;">School</td>
		<td style="vertical-align: top; text-align: center;">State</td>
		<td style="vertical-align: top; text-align: center;">Location</td>
		<td style="vertical-align: top; text-align: center;">Control</td>
		<td style="vertical-align: top; text-align: center;">NumberOfStudents</td>
		<td style="vertical-align: top; text-align: center;">PercentFemales</td>
		<td style="vertical-align: top; text-align: center;">SATVerbal</td>
		<td style="vertical-align: top; text-align: center;">SATMath</td>
		<td style="vertical-align: top; text-align: center;">Expenses</td>
		<td style="vertical-align: top; text-align: center;">PercentFinancialAid</td>
		<td style="vertical-align: top; text-align: center;">NumberOfApplicants</td>
		<td style="vertical-align: top; text-align: center;">PercentAdmitted</td>
		<td style="vertical-align: top; text-align: center;">PercentEnrolled</td>
		<td style="vertical-align: top; text-align: center;">AcademicsScale</td>
		<td style="vertical-align: top; text-align: center;">SocialScale</td>
		<td style="vertical-align: top; text-align: center;">QualityOfLifeScale</td>
	</tr>
	<%
	AdminInteraction admin = new AdminInteraction();
	for (int i = 0; i < admin.viewUniversities().size(); i++) {
		out.print("<tr>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getSchool() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getState() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getLocation() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getControl() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getNumStudents() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getPercentFemale() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getSATVerbal() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getSATMath() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getExpenses() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getPercentFinancialAid() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getNumApplicants() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getPercentAdmitted() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getPercentEnrolled() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getAcademicsScale() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getSocialScale() + "</td>" +
			"<td style=\"vertical-align: top;\">" + admin.viewUniversities().get(i).getQualityOfLife() + "</td>" +
		"</tr>");
	 } %>
	 </tbody>
</table>
</body>
</html>