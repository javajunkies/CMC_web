<%@page language="java" import="CMC2.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>
<html>
<head>

<title>Add University</title>
</head>
<body>

<br>

<form method="post" action="addUniversity_action.jsp" name="editUniversity"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><input name="School"> <br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="State"> <br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="Location"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="Control"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentFemales"> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal"> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input name="SATMath"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><input name="Expenses"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Financial Aid<br>
</td>
<td style="vertical-align: top;"><input name="PercentFinancialAid"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number Of Applicants<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfApplicants"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Admitted<br>
</td>
<td style="vertical-align: top;"><input name="PercentAdmitted"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Enrolled<br>
</td>
<td style="vertical-align: top;"><input name="PercentEnrolled"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Academics Scale<br>
</td>
<td style="vertical-align: top;"><input name="AcademicsScale"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of Life Scale<br>
</td>
<td style="vertical-align: top;"><input name="QualityOfLifeScale"> </td>
</tr>


<tr>
<td style="vertical-align: top;"><input value="Add"
name="Add" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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