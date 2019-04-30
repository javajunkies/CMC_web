<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC2.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Compare Schools</title>
</head>
<%
	UserInteraction ui = new UserInteraction();
	String schoolName1 = request.getParameter("schoolName1");
	String schoolName2 = request.getParameter("schoolName2");

	ArrayList<University> compareSchoolsList;
	compareSchoolsList = ui.compare(schoolName1, schoolName2);
	University school = compareSchoolsList.get(0);
	University school2 = compareSchoolsList.get(1);
%>
<body>
	<a href="userHome.jsp">Back to Menu</a>
	<form>
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td>SCHOOL NAME</td>
					<td><%=school.getSchool()%></td>
					<td><%=school2.getSchool()%></td>
				</tr>
				<tr>
					<td>STATE</td>
					<td><input disabled="disabled" value="<%=school.getState()%>" name="State" type="text"></td>
					<td><input disabled="disabled" value="<%=school2.getState()%>" name="State" type="text"></td>
				</tr>
				<tr>
					<td>LOCATION</td>
					<td><input disabled="disabled" value="<%=school.getLocation()%>" name="Location" type="text"></td>
					<td><input disabled="disabled" value="<%=school2.getLocation()%>" name="Location" type="text"></td>
				</tr>
				<tr>
					<td>CONTROL</td>
					<td><input disabled="disabled" value="<%=school.getControl()%>" name="Control" type="text"></td>
					<td><input disabled="disabled" value="<%=school2.getControl()%>" name="Control" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF STUDENTS</td>
					<td><input disabled="disabled" value=<%=school.getNumStudents()%> name="NumOfStudents" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getNumStudents()%> name="NumOfStudents" type="text"></td>
				</tr>
				<tr>
					<td>PERCENT FEMALE</td>
					<td><input disabled="disabled" value=<%=school.getPercentFemale()%> name="PercentFemale" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentFemale()%> name="PercentFemale" type="text"></td>
				</tr>
				<tr>
					<td>SAT VERBAL</td>
					<td><input disabled="disabled" value=<%=school.getSATVerbal()%> name="SATVerb" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getSATVerbal()%> name="SATVerb" type="text"></td>
				</tr>
				<tr>
					<td>SAT MATH</td>
					<td><input disabled="disabled" value=<%=school.getSATMath()%> name="SATMath" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getSATMath()%> name="SATMath" type="text"></td>
				</tr>
				<tr>
					<td>EXPENSES</td>
					<td><input disabled="disabled" value=<%=school.getExpenses()%> name="Expenses" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getExpenses()%> name="Expenses" type="text"></td>
				</tr>
				<tr>
					<td>PERCENT FINANCIAL AID</td>
					<td><input disabled="disabled" value=<%=school.getPercentFinancialAid()%> name="PercentFinAid" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentFinancialAid()%> name="PercentFinAid" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF APPLICANTS</td>
					<td><input disabled="disabled" value=<%=school.getNumApplicants()%> name="NumApplicants" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getNumApplicants()%> name="NumApplicants" type="text"></td>
				</tr>
				<tr>
					<td>PERCENT ADMITTED</td>
					<td><input disabled="disabled" value=<%=school.getPercentAdmitted()%> name="PercentAdmitted" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentAdmitted()%> name="PercentAdmitted" type="text"></td>
				</tr>
				<tr>
					<td>PERCENT ENROLLED</td>
					<td><input disabled="disabled" value=<%=school.getPercentEnrolled()%> name="PercentEnrolled" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentEnrolled()%> name="PercentEnrolled" type="text"></td>
				</tr>
				<tr>
					<td>ACADEMIC SCALE (1-5)</td>
					<td><input disabled="disabled" value=<%=school.getAcademicsScale()%> name="AcademicScale" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getAcademicsScale()%> name="AcademicScale" type="text"></td>
				</tr>
				<tr>
					<td>SOCIAL SCALE (1-5)</td>
					<td><input disabled="disabled" value=<%=school.getSocialScale()%> name="SocialScale" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getSocialScale()%> name="SocialScale" type="text"></td>
				</tr>
				<tr>
					<td>QUALITY OF LIFE SCALE (1-5)</td>
					<td><input disabled="disabled" value=<%=school.getQualityOfLife()%> name="QualScale" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getQualityOfLife()%> name="QualScale" type="text"></td>
				</tr>
				<tr>
					<td>EMPHASES</td>
					<td><input disabled="disabled" 
			</tbody>
		</table>
	</form>
</body>
</html>