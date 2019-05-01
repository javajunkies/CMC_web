<%@ page language="java" import="CMC2.*, java.util.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
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
								+ "<a href=\"search.jsp\">Search</a>" + "<a href=\"ViewAccount.jsp\">Edit Account</a>" + "<a href=\"logout_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("index.jsp");
					}
				%>

			</div>
		</div>
		
		<div class="sort">

			<%
		UserInteraction uc = (UserInteraction)session.getAttribute("username");
	%>

		
						
						
						
							<%
							
							out.print("<table id=\"defaults\" style=\"top: 10%; display: block;\"><tbody>");
							
				ArrayList<University> savedSchools;
				try{
					savedSchools = uc.viewSavedSchools(uname);
					if(savedSchools.size() == 0){
						out.print(" <tr>" + 
							"<td>You don't have any saved schools</td>"	 +
						"</tr>");
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
					out.print("<form method=\"post\" action=\"ViewSchoolUser.jsp\" name=\"view\" > <input type=\"submit\" class=\"button\" value=\"View\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</td>");
					out.print("<td>" + s.getSchool()  + "</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp\" name=\"remove\" > <input type=\"submit\" class=\"button\" value=\"Remove\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</form>");
					out.print("</td>");
					out.print("</tr>");
					//+ " (added on: " + s.getTimeStamp() + ") "

				}
				out.print("</tbody>" +
						"<tr>" +
							"<td></td><td></td><td>" + 
								"<input type=\"button\" class=\"button\" value=\"Sort By Students\" onclick=\"sortNumStudents()\"> " +
								"<input type=\"button\" class=\"button\" value=\"Sort By Expense\" onclick=\"sortExpense()\">" +
								"<input type=\"button\" class=\"button\" value=\"Sort By Acceptance\" onclick=\"sortAccept()\"> " +
							"</td>" +
						"</tr> " +
					"</table>" +
				"");
				}
				
				}
				catch (Exception e){
					out.print("<tr>" + 
								"<td>You don't have any saved schools</td>"	 +
							"</tr>");
				}
			%>

				
				
				
				
				
				
				
				
				
				
			
						
							<%
							out.print("<table id=\"numStu\" style=\"top: 10%;display: none;\"><tbody>");
							
				ArrayList<University> savedSchools1;
				try{
					savedSchools1 = uc.viewSavedSchools(uname);
					if(savedSchools1.size() == 0){
						out.print(" <tr>" + 
							"<td>You don't have any saved schools</td>"	 +
						"</tr>");
					}
					//" (added on: "  s.getTimeStamp() +

				else{

					out.print("<tr><td></td><td></td><td>School Name by Number of Students </td></tr><tr>");
				for (University s : savedSchools1) {
					out.print("<td>");
					out.print("<form method=\"post\" action=\"CompareSchool.jsp?schoolName=" + s.getSchool() + "\" name=\"Compare\">");
					out.print("<input name = \"Compare\" value=\"Compare\" class=\"button\" type=\"submit\">");
					out.print("</form>");
					out.print("</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"ViewSchoolUser.jsp\" name=\"view\" > <input type=\"submit\" class=\"button\" value=\"View\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</td>");
					out.print("<td>" + s.getSchool()  + "</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp\" name=\"remove\" > <input type=\"submit\" class=\"button\" value=\"Remove\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</form>");
					out.print("</td>");
					out.print("</tr>");
					//+ " (added on: " + s.getTimeStamp() + ") "

				}
				out.print("</tbody>" +
						"<tr>" +
							"<td></td><td></td><td>" + 
								"<input type=\"button\" class=\"button\" value=\"Sort By Students\" onclick=\"sortNumStudents()\"> " +
								"<input type=\"button\" class=\"button\" value=\"Sort By Expense\" onclick=\"sortExpense()\">" +
								"<input type=\"button\" class=\"button\" value=\"Sort By Acceptance\" onclick=\"sortAccept()\"> " +
							"</td>" +
						"</tr> " +
					"</table>" +
				"");
				}
				
				}
				catch (Exception e){
					out.print("<tr>" + 
								"<td>You don't have any saved schools</td>"	 +
							"</tr>");
				}
			%>
				
				
				
				
				
				
				
				
			
						
							<%
							
							out.print("<table id=\"expense\" style=\"top: 10%;display: none;\"><tbody>");
				ArrayList<University> savedSchools2;
				try{
					savedSchools2 = uc.viewSavedSchools(uname);
					if(savedSchools2.size() == 0){
						out.print(" <tr>" + 
							"<td>You don't have any saved schools</td>"	 +
						"</tr>");
					}
					//" (added on: "  s.getTimeStamp() +
					
				else{

					out.print("<tr><td></td><td></td><td>School Name by Expense</td></tr><tr>");
				for (University s : savedSchools2) {
					out.print("<td>");
					out.print("<form method=\"post\" action=\"CompareSchool.jsp?schoolName=" + s.getSchool() + "\" name=\"Compare\">");
					out.print("<input name = \"Compare\" value=\"Compare\" class=\"button\" type=\"submit\">");
					out.print("</form>");
					out.print("</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"viewSchoolFromSaved.jsp\" name=\"view\" > <input type=\"submit\" class=\"button\" value=\"View\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</td>");
					out.print("<td>" + s.getSchool()  + "</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp\" name=\"remove\" > <input type=\"submit\" class=\"button\" value=\"Remove\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</form>");
					out.print("</td>");
					out.print("</tr>");
					//+ " (added on: " + s.getTimeStamp() + ") "

				}
				out.print("</tbody>" +
						"<tr>" +
							"<td></td><td></td><td>" + 
								"<input type=\"button\" class=\"button\" value=\"Sort By Students\" onclick=\"sortNumStudents()\"> " +
								"<input type=\"button\" class=\"button\" value=\"Sort By Expense\" onclick=\"sortExpense()\">" +
								"<input type=\"button\" class=\"button\" value=\"Sort By Acceptance\" onclick=\"sortAccept()\"> " +
							"</td>" +
						"</tr> " +
					"</table>" +
				"");
				}
				
				}
				catch (Exception e){
					out.print("<tr>" + 
								"<td>You don't have any saved schools</td>"	 +
							"</tr>");
				}
			%>

				
				
				
				
				
				
				
				
				
		
						
							<%
							
							out.print("<table id=\"Accept\" style=\"top: 10%;display: none;\"><tbody>");
				ArrayList<University> savedSchools3;
				try{
					savedSchools3 = uc.viewSavedSchools(uname);
					if(savedSchools3.size() == 0){
						out.print(" <tr>" + 
							"<td>You don't have any saved schools</td>"	 +
						"</tr>");
					}
					//" (added on: "  s.getTimeStamp() +
					
				else{
					out.print("<tr><td></td><td></td><td>School Name by Acceptance</td></tr><tr>");
				for (University s : savedSchools3) {
					out.print("<td>");
					out.print("<form method=\"post\" action=\"CompareSchool.jsp?schoolName=" + s.getSchool() + "\" name=\"Compare\">");
					out.print("<input name = \"Compare\" value=\"Compare\" class=\"button\" type=\"submit\">");
					out.print("</form>");
					out.print("</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"ViewSchoolUser.jsp\" name=\"view\" > <input type=\"submit\" class=\"button\" value=\"View\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</td>");
					out.print("<td>" + s.getSchool()  + "</td>");
					out.print("<td>");
					out.print("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp\" name=\"remove\" > <input type=\"submit\" class=\"button\" value=\"Remove\"> <input name=\"school\" value=\""+ s.getSchool() + "\" type=\"hidden\"></form>");
					out.print("</form>");
					out.print("</td>");
					out.print("</tr>");
					//+ " (added on: " + s.getTimeStamp() + ") "

				}
				out.print("</tbody>" +
						"<tr>" +
							"<td></td><td></td><td>" + 
								"<input type=\"button\" class=\"button\" value=\"Sort By Students\" onclick=\"sortNumStudents()\"> " +
								"<input type=\"button\" class=\"button\" value=\"Sort By Expense\" onclick=\"sortExpense()\">" +
								"<input type=\"button\" class=\"button\" value=\"Sort By Acceptance\" onclick=\"sortAccept()\"> " +
							"</td>" +
						"</tr> " +
					"</table>" +
				"");
				}
				
				}
				catch (Exception e){
					out.print("<tr>" + 
								"<td>You don't have any saved schools</td>"	 +
							"</tr>");
				}
			%>
				
					
				</div>
				</div>
				
				
				
				
				
		<script type="text/javascript">
			function sortNumStudents() {
				var defaults = document.getElementById("defaults");
				var numStu = document.getElementById("numStu");
				var expense = document.getElementById("expense");
				var Accept = document.getElementById("Accept");
				
				
					defaults.style.display = "none";
					numStu.style.display = "block";
					expense.style.display = "none";
					Accept.style.display = "none";
				}
		</script>
		
		<script type="text/javascript">
			function sortExpense() {
				var defaults = document.getElementById("defaults");
				var numStu = document.getElementById("numStu");
				var expense = document.getElementById("expense");
				var Accept = document.getElementById("Accept");
				
				
					defaults.style.display = "none";
					numStu.style.display = "none";
					expense.style.display = "block";
					Accept.style.display = "none";
				}
		</script>
		
		<script type="text/javascript">
			function sortAccept() {
				var defaults = document.getElementById("defaults");
				var numStu = document.getElementById("numStu");
				var expense = document.getElementById("expense");
				var Accept = document.getElementById("Accept");
				
				
					defaults.style.display = "none";
					numStu.style.display = "none";
					expense.style.display = "none";
					Accept.style.display = "block";
				}
		</script>
</body>
</html>