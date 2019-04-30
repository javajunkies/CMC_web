<%@page language="java" import="CMC2.*,java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<%
	UserInteraction ui = (UserInteraction) session.getAttribute("username");
	String uname = ui.getCurrentUser().getUsername();
%>
<body>
	<div class="container">
		<div class="nav">
			<span class="CMC">CMC</span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"edit_action.jsp\">Edit Account</a>" + "<a href=\"logout_action\">Logout</a></div>");
					} else {
						response.sendRedirect("index.jsp");
					}
				%>

			</div>
		</div>


	<div class="container">
	<center>
		<div class="results">
			<form method="post" action="compare.jsp" name="compare">
				<table>
					<tr>
						<td></td> 
						<td>School</td>
						<td>Compare</td>
					</tr> 
					<%
						String school = "";
						String state = "";
						String location = "";
						String control = "";
						int minStudents;
						int maxStudents;
						double minPercentFemale;
						double maxPercentFemale;
						double minSATVerbal;
						double maxSATVerbal;
						double minSATMath;
						double maxSATMath;
						double minExpenses;
						double maxExpenses;
						double minPercentFinancialAid;
						double maxPercentFinancialAid;
						int minNumberApplicants;
						int maxNumberApplicants;
						double minPercentAdmitted;
						double maxPercentAdmitted;
						double minPercentEnrolled;
						double maxPercentEnrolled;
						int minAcademicsScale;
						int maxAcademicsScale;
						int minSocialScale;
						int maxSocialScale;
						int minQualityOfLife;
						int maxQualityOfLife;
						boolean negateState;
						
						//school
						if (request.getParameter("school")=="")
						{
							school = "";
						}
						else
						{
							school = request.getParameter("school");
						}
						
						//state
						if(request.getParameter("state")=="")
						{
							state = "";
						}
						else
						{
							state = request.getParameter("state");
						}
						//location
						if (request.getParameter("location")=="")
						{
							location = "";
						}
						else
						{
							location = request.getParameter("location");
						}
						//control
						if (request.getParameter("control")=="")
						{
							control = "";
						}
						else
						{
							control = request.getParameter("control");
						}
						//minStudents
						if (request.getParameter("minStudents")=="")
						{
							 minStudents = 0;
						}
						else
						{
							minStudents = Integer.parseInt(request.getParameter("minStudents"));
						}
						//maxStudents
						if (request.getParameter("maxStudents")=="")
						{
							maxStudents = 0;
						}
						else
						{
							maxStudents = Integer.parseInt(request.getParameter("maxStudents"));
						}
						//minPercentFemale
						if (request.getParameter("minPercentFemale")=="")
						{
							minPercentFemale = 0.0;
						}
						else
						{
							minPercentFemale = Double.parseDouble(request.getParameter("minPercentFemale"));
						}
						//maxPercentFemale
						if (request.getParameter("maxPercentFemale")=="")
						{
							maxPercentFemale = 0.0;
						}
						else
						{
							maxPercentFemale = Double.parseDouble(request.getParameter("maxPercentFemale"));
						}
						//minSATVerbal
						if (request.getParameter("minSATVerbal")=="")
						{
							minSATVerbal = 0.0;
						}
						else
						{
							minSATVerbal = Double.parseDouble(request.getParameter("minSATVerbal"));
						}
						//maxSATVerbal
						if (request.getParameter("maxSATVerbal")=="")
						{
							maxSATVerbal = 0.0;
						}
						else
						{
							maxSATVerbal = Double.parseDouble(request.getParameter("maxSATVerbal"));
						}
						//minSATMath
						if (request.getParameter("minSATMath")=="")
						{
							minSATMath = 0.0;
						}
						else
						{
							minSATMath = Double.parseDouble(request.getParameter("minSATMath"));
						}
						//maxSATMath
						if (request.getParameter("maxSATMath")=="")
						{
							maxSATMath = 0.0;
						}
						else
						{
							maxSATMath = Double.parseDouble(request.getParameter("maxSATMath"));
						}
						//minExpenses
						if (request.getParameter("minExpenses")=="")
						{
							minExpenses = 0.0;
						}
						else
						{
							minExpenses = Double.parseDouble(request.getParameter("minExpenses"));
						}
						//maxExpenses
						if (request.getParameter("maxExpenses")=="")
						{
							maxExpenses = 0.0;
						}
						else
						{
							maxExpenses = Double.parseDouble(request.getParameter("maxExpenses"));
						}
						//minPercentFinancialAid
						if (request.getParameter("minPercentFinancialAid")=="")
						{
							 minPercentFinancialAid = 0.0;
						}
						else
						{
							minPercentFinancialAid = Double.parseDouble(request.getParameter("minPercentFinancialAid"));
						}
						//maxPercentFinancialAid
						if (request.getParameter("maxPercentFinancialAid")=="")
						{
							maxPercentFinancialAid = 0.0;
						}
						else
						{
							maxPercentFinancialAid = Double.parseDouble(request.getParameter("maxPercentFinancialAid"));
						}
						//minNumberApplicants
						if (request.getParameter("minNumberApplicants")=="")
						{
							minNumberApplicants = 0;
						}
						else
						{
							minNumberApplicants = Integer.parseInt(request.getParameter("minNumberApplicants"));
						}
						//maxNumberApplicants
						if (request.getParameter("maxNumberApplicants")=="")
						{
							maxNumberApplicants = 0;
						}
						else
						{
							maxNumberApplicants = Integer.parseInt(request.getParameter("maxNumberApplicants"));
						}
						//minPercentAdmitted
						if (request.getParameter("minPercentAdmitted")=="")
						{
							minPercentAdmitted = 0.0;
						}
						else
						{
							minPercentAdmitted = Double.parseDouble(request.getParameter("minPercentAdmitted"));
						}
						//maxPercentAdmitted
						if (request.getParameter("maxPercentAdmitted")=="")
						{
							maxPercentAdmitted = 0.0;
						}
						else
						{
							maxPercentAdmitted = Double.parseDouble(request.getParameter("maxPercentAdmitted"));
						}
						//minPercentEnrolled
						if (request.getParameter("minPercentEnrolled")=="")
						{
							minPercentEnrolled = 0.0;
						}
						else
						{
							minPercentEnrolled = Double.parseDouble(request.getParameter("minPercentEnrolled"));
						}
						//maxPercentEnrolled
						if (request.getParameter("maxPercentEnrolled")=="")
						{
							maxPercentEnrolled = 0.0;
						}
						else
						{
							maxPercentEnrolled = Double.parseDouble(request.getParameter("maxPercentEnrolled"));
						}
						//minAcademicsScale
						if (request.getParameter("minAcademicsScale")=="")
						{
							minAcademicsScale = 0;
						}
						else
						{
							minAcademicsScale = Integer.parseInt(request.getParameter("minAcademicsScale"));
						}
						//maxAcademicsScale
						if (request.getParameter("maxAcademicsScale")=="")
						{
							maxAcademicsScale = 0;
						}
						else
						{
							maxAcademicsScale = Integer.parseInt(request.getParameter("maxAcademicsScale"));
						}
						//minSocialScale
						if (request.getParameter("minSocialScale")=="")
						{
							minSocialScale = 0;
						}
						else
						{
							minSocialScale = Integer.parseInt(request.getParameter("minSocialScale"));
						}
						//maxSocialScale
						if (request.getParameter("maxSocialScale")=="")
						{
							maxSocialScale = 0;
						}
						else
						{
							maxSocialScale = Integer.parseInt(request.getParameter("maxSocialScale"));
						}
						//minQualityOfLife
						if (request.getParameter("minQualityOfLife")=="")
						{
							minQualityOfLife = 0;
						}
						else
						{
							minQualityOfLife = Integer.parseInt(request.getParameter("minQualityOfLife"));
						}
						//maxQualityOfLife
						if (request.getParameter("maxQualityOfLife")=="")
						{
							maxQualityOfLife = 0;
						}
						else
						{
							maxQualityOfLife = Integer.parseInt(request.getParameter("maxQualityOfLife"));
						}
						//negateState
						if (request.getParameter("negateState")=="")
						{
							negateState = false;
						}
						else
						{
							negateState = true;
						}
						
						ArrayList<University> result = new ArrayList<University>();

						result = ui.searchUniversities(school, state, false, location, control, minStudents, maxStudents,
								minPercentFemale, maxPercentFemale, minSATVerbal, maxSATVerbal, minSATMath, maxSATMath, minExpenses,
								maxExpenses, minPercentFinancialAid, maxPercentFinancialAid, minNumberApplicants,
								maxNumberApplicants, minPercentAdmitted, maxPercentAdmitted, minPercentEnrolled, maxPercentEnrolled,
								minAcademicsScale, maxAcademicsScale, minSocialScale, maxSocialScale, minQualityOfLife,
								maxQualityOfLife);

						for (int i = 0; i != result.size(); i++) {
							out.print("<tr>" + 
										"<td width=10% > <input type=\"button\" class=\"button\" value=\"save\" onclick=\"addAction.jsp\"> </td>"+
										"<td width=50% >" + result.get(i).getSchool() + "</td>" +
										"<td width=10% ><input type=\"checkbox\" name=\"compare[]\" value=" + result.get(i).getSchool() + "></td>" +
									"</tr>");
						}
					%>
					<tr>
						<td></td><td></td>
						<td><input type="submit" class="button" value="Compare"></td>
					</tr>
				</table>
			</form>

		</div>
		</center>
	</div>
	</div>
	<script>
		function checkboxlimit(checkgroup, limit) {
			for (var i = 0; i < checkgroup.length; i++) {
				checkgroup[i].onclick = function() {
					var checkedcount = 0
					for (var i = 0; i < checkgroup.length; i++)
						checkedcount += (checkgroup[i].checked) ? 1 : 0
					if (checkedcount > limit) {
						alert("You can check a maximum of " + limit + " boxes.")
						this.checked = false
					}
				}
			}
		}
		checkboxlimit(document.forms.checkform['compare[]'], 2)
	</script>
</body>
</html>