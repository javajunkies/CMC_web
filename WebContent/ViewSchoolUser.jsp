<%@page language="java" import="CMC2.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>ViewSchool</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br>
	<%
		UserInteraction ui = (UserInteraction) session.getAttribute("username");
		String school = (request.getParameter("school"));
		University univ = ui.viewExistingUniversity(school);
	%>

	<br>
	<a href="search.jsp">Search again</a>
	<table style="text-align: center; width: 1069px; height: 480px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top;">School<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getSchool()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getState()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getLocation()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getControl()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number Of Students<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getNumStudents()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% Female<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getPercentFemale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Verbal<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getSATVerbal()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Math<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getSATMath()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Expenses<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getExpenses()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% Financial Aid<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getPercentFinancialAid()%>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Applicants<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getNumApplicants()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% Admitted<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getPercentAdmitted()%>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% Enrolled<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getPercentEnrolled()%>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Academics Scale (1-5)<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getAcademicsScale()%>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Social Scale (1-5)<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getSocialScale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
				</td>
				<td style="vertical-align: top;"><%=univ.getQualityOfLife()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Emphases<br>
				</td>
				<td style="vertical-align: top;"></td>
			</tr>
		</tbody>
	</table>
	<!-- <form method="post" action="saveSchoolSearchAction.jsp\" name="SaveButton"> 
 	<input name="SaveButton" value="Save" type="submit"> 
 	</form>  -->
 	<form method="post" action="saveSchoolSearchAction.jsp" name="Save" > <input type="submit" class="button" value="Save"> <input name="school" value="<%=univ.getSchool()%>" type="hidden">  </form>
	<br>
	<br> MAY WE ALSO RECOMMEND
	<br>

	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top;">School<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="School1"
					value="<%out.print(ui.getRecommendedList(school).get(0).getSchool());%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="State1"
					value="<%out.print(ui.getRecommendedList(school).get(0).getState());%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Local1"
					value="<%out.print(ui.getRecommendedList(school).get(0).getLocation());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Control1"
					value="<%out.print(ui.getRecommendedList(school).get(0).getControl());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="NumStudents1"
					value="<%out.print(ui.getRecommendedList(school).get(0).getNumStudents());%>"><br></td>
			</tr>
		</tbody>
	</table>
	<form method="post" action="saveSchoolSearchAction.jsp\" name="SaveButton">
		<input name="SaveButton" value="Save" type="submit">
	</form>
	<br>
	<br>
	<table style="text-align: center; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top;">School<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="School1"
					value="<%out.print(ui.getRecommendedList(school).get(1).getSchool());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="State1"
					value="<%out.print(ui.getRecommendedList(school).get(1).getState());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Local1"
					value="<%out.print(ui.getRecommendedList(school).get(1).getLocation());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Control1"
					value="<%out.print(ui.getRecommendedList(school).get(1).getControl());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="NumStudents1"
					value="<%out.print(ui.getRecommendedList(school).get(1).getNumStudents());%>"><br></td>
			</tr>
		</tbody>
	</table>
	<form method="post" action="saveSchoolSearchAction.jsp\" name="SaveButton">
		<input name="SaveButton" value="Save" type="submit">
	</form>
	<br>
	<table style="text-align: center; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top;">School<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="School1"
					value="<%out.print(ui.getRecommendedList(school).get(2).getSchool());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="State1"
					value="<%out.print(ui.getRecommendedList(school).get(2).getState());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Local1"
					value="<%out.print(ui.getRecommendedList(school).get(2).getLocation());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Control1"
					value="<%out.print(ui.getRecommendedList(school).get(2).getControl());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="NumStudents1"
					value="<%out.print(ui.getRecommendedList(school).get(2).getNumStudents());%>"><br></td>
			</tr>
		</tbody>
	</table>
	<form method="post" action="saveSchoolSearchAction.jsp\" name="SaveButton">
		<input name="SaveButton" value="Save" type="submit">
	</form>
	<br>
	<table style="text-align: center; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top;">School<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="School1"
					value="<%out.print(ui.getRecommendedList(school).get(3).getSchool());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="State1"
					value="<%out.print(ui.getRecommendedList(school).get(3).getState());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Local1"
					value="<%out.print(ui.getRecommendedList(school).get(3).getLocation());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Control1"
					value="<%out.print(ui.getRecommendedList(school).get(3).getControl());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="NumStudents1"
					value="<%out.print(ui.getRecommendedList(school).get(3).getNumStudents());%>"><br></td>
			</tr>
		</tbody>
	</table>
	<form method="post" action="saveSchoolSearchAction.jsp\" name="SaveButton">
		<input name="SaveButton" value="Save" type="submit">
	</form>
	<br>
	<table style="text-align: center; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
				<td style="vertical-align: top;">School<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="School1"
					value="<%out.print(ui.getRecommendedList(school).get(4).getSchool());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="State1"
					value="<%out.print(ui.getRecommendedList(school).get(4).getState());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Local1" 
					value="<%out.print(ui.getRecommendedList(school).get(4).getLocation());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="Control1"
					value="<%out.print(ui.getRecommendedList(school).get(4).getControl());%>"><br></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly"
					name="NumStudents1"
					value="<%out.print(ui.getRecommendedList(school).get(4).getNumStudents());%>"><br></td>
			</tr>
		</tbody>
	</table>
	<form method="post" action="saveSchoolSearchAction.jsp\" name="SaveButton">
		<input name="SaveButton" value="Save" type="submit">
	</form>
	<br>
	<br>
</body>
</html>

