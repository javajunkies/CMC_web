<%@ page language="java" import="CMC2.*, java.util.*"%>
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Saved Schools</title>
</head>
<%
	UserInteraction ui = (UserInteraction) session.getAttribute("username");
	String uname = ui.getCurrentUser().getUsername();
%>
<body>
	<div class="container">
		<div class="nav">
			<span><a href="userHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"ViewAccount.jsp\">Edit Account</a>" + "<a href=\"logout_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("index.jsp");
					}
				%>

			</div>
		</div>
		<div class="inside">

			<%
		UserInteraction uc = (UserInteraction)session.getAttribute("username");
	%>
			<center>

				<table>
					<tbody>
						
							<%
				ArrayList<University> savedSchools;
				try{
					savedSchools = uc.viewSavedSchools(uname);
					if(savedSchools.size() == 0){
						out.print(" <tr>" + 
							"<td>You don't have any saved schools</td>"	 +
						"</tr>");
					}
				else if(savedSchools.size() == 1){
					out.print("<tr><td><td></td>School Name</td></tr><tr>");
					for (University s : savedSchools) {
						out.print("<td>");
						out.print("<form method=\"post\" action=\"../ViewSchoolUser.jsp?schoolName=" + s.getSchool() + "\" name=\"View\">");
						out.print("<input name = \"View\" class=\"button\" value=\"View\" type=\"submit\">");
						out.print("</form>");
						out.print("</td>");
						out.print("<td>" + s.getSchool() +  "</td>");
						out.print("<td>");
						out.print("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp?Name=" + s.getSchool() + "\" name=\"Remove\">");
						out.print("<input name=\"Remove\" value=\"Remove\" class=\"button\" type=\"submit\">");
						out.print("</form>");
						out.print("</td>");
						out.print("</tr>");
					}
					//" (added on: "  s.getTimeStamp() +
					
				}
				else{
					out.print("<tr><td></td><td></td><td>School Name</td></tr><tr>");
				for (University s : savedSchools) {
					out.print("<td>");
					out.print("<form method=\"post\" action=\"CompareSchool.jsp?schoolName=" + s.getSchool() + "\" name=\"Compare\">");
					out.print("<input name = \"Compare\" value=\"Compare\" class=\"button\" type=\"submit\">");
					out.print("</form>");
					out.print("</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"../ViewSchoolUser.jsp?schoolName=" + s.getSchool() + "\" name=\"View\">");
					out.print("<input name = \"View\" value=\"View\" class=\"button\" type=\"submit\">");
					out.print("</form>");
					out.print("</td>");
					out.print("<td>" + s.getSchool()  + "</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp\" name=\"remove\" > <input type=\"submit\" class=\"button\" value=\"Remove\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</form>");
					out.print("</td>");
					out.print("</tr>");
					//+ " (added on: " + s.getTimeStamp() + ") "
				}
				}
				
				}
				catch (Exception e){
					out.print("<tr>" + 
								"<td>You don't have any saved schools</td>"	 +
							"</tr>");
				}
			%>


						</tr>
					</tbody>
					<tr>
						<td></td><td></td><td></td>
						<td><form method=\"post\" action=\"sortSavedSchools_Action.jsp\" name=\"sort\" > <input type=\"submit\" class=\"button\" value=\"Sort By Number Of Applicants\"> <input name=\"sort\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form></td>
					</tr>
				</table>
			</center>
		</div>
</body>
</html>