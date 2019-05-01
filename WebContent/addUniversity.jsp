<<<<<<< HEAD
<%@page language="java" import="CMC2.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>
=======

<%@page language="java" import="CMC2.*"%>
>>>>>>> 19a99568c865b24097628b212a65d493d8417bbd
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
	String uname = ai.getCurrentUser().getUsername();
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



			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>