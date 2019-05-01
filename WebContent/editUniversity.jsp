<%@page language="java" import="CMC2.*" import="java.util.*"%>




<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%
AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
	String uname = ai.getCurrentUser().getUsername();


String univ = request.getParameter("school");
out.print(univ);
University school = ai.getCurrentUniversity(univ);
%>

<body>
	<div class="container">
		<div class="nav">
			<span><a href="userHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"ViewAccount.jsp\">Edit Account</a>" + "<a href=\"logoutAdmin_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("temp_index.jsp");
					}
				%>

			</div>
		</div>
		<center>
			<div class=inside>

		


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
<td style="vertical-align: top;"><input name="Location" value=<%=school.getLocation()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="Control" value=<%=school.getControl()%>></td>
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


			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>
