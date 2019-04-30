<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>ViewSchool</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<br>
<%
String school = (request.getParameter("school"));
%>
<%=school%>
<a href="results.jsp">Go back to search results</a>
<table style="text-align: left; width: 1069px; height: 480px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="School"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="State"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Location"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Control"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number Of Students<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="NumStudents"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Female<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Female"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="SATVerbal"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="SATMath"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Expenses"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Financial Aid<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="FinancialAid"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Applicants<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="NumApplicants"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Admitted<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Admitted"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Enrolled"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Academics Scale (1-5)<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="Academics"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale (1-5)<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="SocialScale"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="QualityScale" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Emphases<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="EP1" value=""><br>
<input readonly="readonly" name="EP2" value=""><br>
<input readonly="readonly" name="EP3" value=""><br>
<input readonly="readonly" name="EP4" value=""><br>
<input readonly="readonly" name="EP5" value=""><br>
</td>
</tr>
</tbody>
</table>
<form method="post" action="SaveSchool_action.jsp" name="SaveButton"> <input
name="SaveButton" value="Save" type="submit"></form>
<br>
<br>
MAY WE ALSO RECOMMEND<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="School1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="State1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Local1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Control1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="NumStudents1" value=""><br>
</td>
</tr>
</tbody>
</table>
<form method="post" action="SaveSchool_action.jsp" name="SaveButton"> <input
name="SaveButton" value="Save" type="submit"></form>
<br>
<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="School1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="State1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Local1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Control1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="NumStudents1" value=""><br>
</td>
</tr>
</tbody>
</table>
<form method="post" action="SaveSchool_action.jsp" name="SaveButton"> <input
name="SaveButton" value="Save" type="submit"></form>
<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="School1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="State1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Local1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Control1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="NumStudents1" value=""><br>
</td>
</tr>
</tbody>
</table>
<form method="post" action="SaveSchool_action.jsp" name="SaveButton"> <input
name="SaveButton" value="Save" type="submit"></form>
<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="School1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="State1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Local1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Control1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="NumStudents1" value=""><br>
</td>
</tr>
</tbody>
</table>
<form method="post" action="SaveSchool_action.jsp" name="SaveButton"> <input
name="SaveButton" value="Save" type="submit"></form>
<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="School1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="State1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Local1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="Control1" value=""><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"> <input readonly="readonly"
name="NumStudents1" value=""><br>
</td>
</tr>
</tbody>
</table>
<form method="post" action="SaveSchool_action.jsp" name="SaveButton"> <input
name="SaveButton" value="Save" type="submit"></form>
<br>
<br>
</body>
</html>

