<%@ page language="java" import="CMC2.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Saved Schools</title>
</head>
<body>
	<%
		UserInteraction ui = new UserInteraction();
		UserController uc = (UserController)session.getAttribute("username");
	%>
	
	<a href="userHome.jsp">Return to Menu</a>
	
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="18" rowspan="1" style="vertical-align: top;"><a>School</a></td>
				<%
				String uname = uc.getCurrentUser().getUsername();
				ArrayList<University> savedSchools = uc.viewSavedSchools(uname);
				
				if(savedSchools.size() == 0){
					request.setAttribute("Error", "You have no saved schools");
			        request.getRequestDispatcher("userHome.jsp").forward(request, response);
				}
				else if(savedSchools.size() == 1){
					for (University s : savedSchools) {
						out.println("<tr>");
						out.println("<td style=\"vertical-align: top;\">");
						out.println("<form method=\"post\" action=\"../ViewSchoolUser.jsp?schoolName=" + s.getSchool() + "\" name=\"View\">");
						out.println("<input name = \"View\" value=\"View\" type=\"submit\">");
						out.println("</form>");
						out.println("</td>");
						out.println("<td style=\"vertical-align: top;\">" + s.getSchool() + " " + s.getTimeStamp() + "</td>");
						out.println("<td style=\"vertical-align: top;\">");
						out.println("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp?Name=" + s.getSchool() + "\" name=\"Remove\">");
						out.println("<input name=\"Remove\" value=\"Remove\" type=\"submit\">");
						out.println("</form>");
						out.println("</td>");
						out.println("</tr>");
					}
					
				}
				else{
				for (University s : savedSchools) {
					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"CompareSchool.jsp?schoolName=" + s.getSchool() + "\" name=\"Compare\">");
					out.println("<input name = \"Compare\" value=\"Compare\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"../ViewSchoolUser.jsp?schoolName=" + s.getSchool() + "\" name=\"View\">");
					out.println("<input name = \"View\" value=\"View\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + s.getSchool() + " (added on: " + s.getTimeStamp() + ") " + "</td>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"RemoveSavedSchool_action.jsp?Name=" + s.getSchool() + "\" name=\"Remove\">");
					out.println("<input name=\"Remove\" value=\"Remove\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("</tr>");
				}
				}
			%>
				

			</tr>
		</tbody>
	</table>

</body>
</html>