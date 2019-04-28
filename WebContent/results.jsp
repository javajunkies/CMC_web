<%@page language="java" import="CMC2.*,java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div class="container">
		<div class="inside">
			<form method="post" action="compare.jsp" name="compare">
				<table>
					<%
						UserInteraction ui = new UserInteraction();

						String school = request.getParameter("school");
						String state = request.getParameters("state");
						String location = request.getParameters("location");
						String control = request.getParameters("control");
						int minStudents = Integer.parseInt(request.getParameters("minStudents"));
						int maxStudents = Integer.parseInt(request.getParameters("maxStudents"));
						double minPercentFemale = Double.parseDouble(request.getParameters("minPercentFemale"));
						double maxPercentFemale = Double.parseDouble(request.getParameters("maxPercentFemale"));
						double minSATVerbal = Double.parseDouble(request.getParameters("minSATVerbal"));
						double maxSATVerbal = Double.parseDouble(request.getParameters("maxSATVerbal"));
						double minSATMath = Double.parseDouble(request.getParameters("minSATMath"));
						double maxSATMath = Double.parseDouble(request.getParameters("maxSATMath"));
						double minExpenses = Double.parseDouble(request.getParameters("minExpenses"));
						double maxExpenses = Double.parseDouble(request.getParameters("maxExpenses"));
						double minPercentFinancialAid = Double.parseDouble(request.getParameters("minPercentFinancialAid"));
						double maxPercentFinancialAid = Double.parseDouble(request.getParameters("maxPercentFinancialAid"));
						int minNumberApplicants = Integer.parseInt(request.getParameters("minNumberApplicants"));
						int maxNumberApplicants = Integer.parseInt(request.getParameters("maxNumberApplicants"));
						double minPercentAdmitted = Double.parseDouble(request.getParameters("minPercentAdmitted"));
						double maxPercentAdmitted = Double.parseDouble(request.getParameters("maxPercentAdmitted"));
						double minPercentEnrolled = Double.parseDouble(request.getParameters("minPercentEnrolled"));
						double maxPercentEnrolled = Double.parseDouble(request.getParameters("maxPercentEnrolled"));
						int minAcademicsScale = Integer.parseInt(request.getParameters("minAcademicsScale"));
						int maxAcademicsScale = Integer.parseInt(request.getParameters("maxAcademicsScale"));
						int minSocialScale = Integer.parseInt(request.getParameters("minSocialScale"));
						int maxSocialScale = Integer.parseInt(request.getParameters("maxSocialScale"));
						int minQualityOfLife = Integer.parseInt(request.getParameters("minQualityOfLife"));
						int maxQualityOfLife = Integer.parseInt(request.getParameters("maxQualityOfLife"));
						boolean negateState = request.getParameters("negateState");

						ArrayList result = new ArrayList<University>();
						result = ui.searchUniversities(school, state, negateState, location, control, minStudents, maxStudents,
								minPercentFemale, maxPercentFemale, minSATVerbal, maxSATVerbal, minSATMath, maxSATMath, minExpenses,
								maxExpenses, minPercentFinancialAid, maxPercentFinancialAid, minNumberApplicants,
								maxNumberApplicants, minPercentAdmitted, maxPercentAdmitted, minPercentEnrolled, maxPercentEnrolled,
								minAcademicsScale, maxAcademicsScale, minSocialScale, maxSocialScale, minQualityOfLife,
								maxQualityOfLife);

						for (int i = 0; i != result.size(); i++) {
							out.print("<tr>" + "<td>School</td><td>Compare</td>" + "</tr>" + "<tr>" + "<td width=50% >"
									+ result.get(i).getSchool() + "</td>"
									+ "<td width=10% ><input type=\"checkbox\" name=\"compare[]\" value="
									+ result.get(i).getSchool() + "></td>" + "</tr>");
						}
					%>
					<tr>
						<td></td>
						<td><input type="submit" class="button" value="Submit"></td>
					</tr>
				</table>
			</form>

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