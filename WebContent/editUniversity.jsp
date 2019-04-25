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
<td style="vertical-align: top;"><input name="School" value=<%univ.getfName();%>><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="State" value=<%user.getlName();%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="Location" value=<%user.getUsername();%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="Control" value=<%user.getPassword();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents" value=<%user.getType();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales" value=<%user.getStatus();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal" value=<%user.getStatus();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input name="SATMath" value=<%user.getStatus();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales" value=<%user.getStatus();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales" value=<%user.getStatus();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales" value=<%user.getStatus();%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales" value=<%user.getStatus();%>> </td>
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