<%@page language="java" import="CMC2.*" import="java.util.*"%>




	<%
		AdminController ac = (AdminController) session.getAttribute("admincontroller");
		//User user = ac.getSpecificUser(request.getParameter("Username"));
		University univ = ac.editUniversity(school, state, location, control, numberOfStudents, percentFemales, SATVerbal, SATMath, expenses, percentFinancialAid, numberOfApplicants, percentAdmitted, percentEnrolled, academicsScale, socialScale, qualityOfLifeScale)
	%>

<html>
<head>

<title>Edit University Form</title>
</head>
<body>
<br>
Edit University:<br>
<br>

<form method="post" action="editUniversity_action.jsp" name="editUniversity"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><input name="School" value=<%university.getSchool();%>><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="State" value=<%university.getState();%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="Location" value=<%university.getLocation();%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="Control" value=<%university.getControl();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents" value=<%university.getNumberOfStudents();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales" value=<%university.getPercentFemales();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal" value=<%university.getSATVerbal();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input name="SATMath" value=<%university.SATMath();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><input name="Expenses" value=<%university.getExpenses();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Financial Aid<br>
</td>
<td style="vertical-align: top;"><input name="PercentFinancialAid" value=<%university.getPercentFinancialAid();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number Of Applicants<br>
</td>
<td style="vertical-align: top;"><input name="Number of Applicants" value=<%university.getNumApplicants();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Admitted<br>
</td>
<td style="vertical-align: top;"><input name="Percent Admitted" value=<%university.getPercentAdmitted();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Enrolled<br>
</td>
<td style="vertical-align: top;"><input name="Percent Enrolled" value=<%university.getPercentEnrolled();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Academics Scale<br>
</td>
<td style="vertical-align: top;"><input name="Academics Scale" value=<%university.getAcademicsScale();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale<br>
</td>
<td style="vertical-align: top;"><input name="Social Scale" value=<%university.getSocialScale();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of Life Scale<br>
</td>
<td style="vertical-align: top;"><input name="Quality of Life Scale" value=<%university.getQualityOfLife();%>> </td>
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