<%@ page language="java" import="CMC2.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="checkAdminLoggedIn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


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
			<span><a href="adminHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"viewUsers.jsp\">Manage Users</a>" + "<a href=\"logoutAdmin_action.jsp\">Logout</a></div>");
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Schools</title>
</head>
<body>
<%
String r = request.getParameter("Result");
		if(r != null && r.equals("1")){
			out.println("University sucessfully edited."+ "<br> <br>");
		}
			if (r != null && r.equals("2")) {
		out.println("No school entered." + "<br> <br>");
			} else if (r != null && r.equals("3")) {
		out.println("No state entered.");
			} else if (r != null && r.equals("4")) {
			out.println("No location entered.");
		} else if (r != null && r.equals("5")) {
			out.println("No control entered.");
		} else if (r != null && r.equals("6")) {
			out.println("Invalid number of students.");
		} else if (r != null && r.equals("7")) {
			out.println("Invalid Percent Female.");
		} else if (r != null && r.equals("8")) {
			out.println("SAT Verbal.");
		} else if (r != null && r.equals("9")) {
			out.println("Invalid SAT Math.");
		} else if (r != null && r.equals("10")) {
			out.println("Invalid expenses.");
		} else if (r != null && r.equals("11")) {
			out.println("Invalid percent financial aid.");
		} else if (r != null && r.equals("12")) {
			out.println("Invalid number of applicants.");
		} else if (r != null && r.equals("13")) {
			out.println("Invalid percent admitted.");
		} else if (r != null && r.equals("14")) {
			out.println("Invalid percent enrolled.");
		} else if (r != null && r.equals("15")) {
			out.println("Invalid academics scale.");
		} else if (r != null && r.equals("16")) {
			out.println("Invalid social scale.");
		} else if (r != null && r.equals("17")) {
			out.println("Invalid quality of life scale.");
		}
	%>
<form method="post" action="editUniversity.jsp" name="editUniversity"><br>
<table style="text-align: left; width: 1069px; height: 480px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<a href="addUniversity.jsp" target="_blank">Add a University</a> <br>
	<tr>
		<td style="vertical-align: top; text-align: center;">School
		</td>
		<td style="vertical-align: top; text-align: center;">State
		</td>
		<td style="vertical-align: top; text-align: center;">Location
		</td>
		<td style="vertical-align: top; text-align: center;">Control
		</td>
		<td style="vertical-align: top; text-align: center;">NumberOfStudents
		</td>
		<td style="vertical-align: top; text-align: center;">PercentFemales
		</td>
		<td style="vertical-align: top; text-align: center;">SATVerbal
		</td>
		<td style="vertical-align: top; text-align: center;">SATMath
		</td>
		<td style="vertical-align: top; text-align: center;">Expenses
		</td>
		<td style="vertical-align: top; text-align: center;">PercentFinancialAid
		</td>
		<td style="vertical-align: top; text-align: center;">NumberOfApplicants
		</td>
		<td style="vertical-align: top; text-align: center;">PercentAdmitted
		</td>
		<td style="vertical-align: top; text-align: center;">PercentEnrolled
		</td>
		<td style="vertical-align: top; text-align: center;">AcademicsScale
		</td>
		<td style="vertical-align: top; text-align: center;">SocialScale
		</td>
		<td style="vertical-align: top; text-align: center;">QualityOfLifeScale
		</td>
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
			"<td> <form method=\"post\" action=\"editUniversity.jsp\" name=\"editUniv\" > <input type=\"submit\" class=\"button\" value=\"Edit\"> <input name=\"school\" value=\""+ admin.viewUniversities().get(i).getSchool() + "\" type=\"hidden\"> </td> </form>" +

					"</tr>");
	 } %>
	 </tbody>
</table>
</body>
</html>



			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>