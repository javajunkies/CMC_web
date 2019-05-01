<%@page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>
<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
	String univ = request.getParameter("school");
	out.print(univ);
	University school = ai.getCurrentUniversity(univ);
%>

<html>
<head>

<title>Edit University Form</title>
</head>
<body>

<br>

<form method="post" action="editUniversity_action.jsp" name="editUniversity"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><input name="School" value="<%=school.getSchool()%>"><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="State" value=<%=school.getState()%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="Location" value=<%=school.getLocation()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="Control" value=<%=school.getControl()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents" value=<%=school.getNumStudents()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales" value=<%=school.getPercentFemale()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal" value=<%=school.getSATVerbal()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input name="SATMath" value=<%=school.getSATMath()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><input name="Expenses" value=<%=school.getExpenses()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Financial Aid<br>
</td>
<td style="vertical-align: top;"><input name="PercentFinancialAid" value=<%=school.getPercentFinancialAid()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number Of Applicants<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfApplicants" value=<%=school.getNumApplicants()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Admitted<br>
</td>
<td style="vertical-align: top;"><input name="PercentAdmitted" value=<%=school.getPercentAdmitted()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Enrolled<br>
</td>
<td style="vertical-align: top;"><input name="PercentEnrolled" value=<%=school.getPercentEnrolled()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Academics Scale<br>
</td>
<td style="vertical-align: top;"><input name="AcademicsScale" value=<%=school.getAcademicsScale()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale" value=<%=school.getSocialScale()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of Life Scale<br>
</td>
<td style="vertical-align: top;"><input name="QualityOfLifeScale" value=<%=school.getQualityOfLife()%>> </td>
</tr>


<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>