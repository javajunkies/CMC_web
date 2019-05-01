<%@page language="java" import="CMC2.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
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
			<span><a href="userHome.jsp" class="CMC">CMC</a></span>
			<div class="dropdown">
				<%
					if (uname != null) {
						out.print("<button class=\"dropbtn\">" + uname + "</button>" + "<div class= \"dropdown-content\">"
								+ "<a href=\"ViewSaved.jsp\">My Saved Schools</a>" + "<a href=\"ViewAccount.jsp\">Edit Account</a>" + "<a href=\"logout_action.jsp\">Logout</a></div>");
					} else {
						response.sendRedirect("index.jsp");
					}
				%>

			</div>
		</div>


		<div class="search" style="display: block;" id="s">
			<center>
				<form method="post" action="results.jsp" name="search">
					<table>
						<tr>
							<td>Search</td>
						</tr>
						<tr>
							<td width=90%><input class="searchBarName" type="text"
								name="schoolBasic" placeholder="School Name"></td>
							<td width=10%><input type="submit" class="button"
								value="Submit"></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="button" class="button" value="Advanced >"
								onclick="toggle()"></td>
						</tr>
					</table>
				</form>
			</center>
		</div>

		<div class="searchAdvanced" style="display: none;" id="sa">
			<center>
				<form method="post" action="results.jsp" name="search">
					<table>
						<tr>
							<td>Search</td>
						</tr>
						<tr>
							<td width=50%><input class="searchBar" type="text"
								name="school" placeholder="School Name"></td>
							<td><input class="searchBar" type="text" name="state"
								placeholder="State"></td>
							<td><input type="checkbox"
								name="negateState">Negate</td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text" name="location"
								placeholder="Location"></td>
							<td><input class="searchBar" type="text" name="control"
								placeholder="Control"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text" name="minStudents"
								placeholder="Minimum Students"></td>
							<td><input class="searchBar" type="text" name="maxStudents"
								placeholder="Maximum Students"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minPercentFemale" placeholder="Minimum Percent Female"></td>
							<td><input class="searchBar" type="text"
								name="maxPercentFemale" placeholder="Maximum Percent Female"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text" name="minSATVerbal"
								placeholder="Minimum Verbal SAT"></td>
							<td><input class="searchBar" type="text" name="maxSATVerbal"
								placeholder="Maximum Verbal SAT"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text" name="minSATMath"
								placeholder="Minimum SAT Math"></td>
							<td><input class="searchBar" type="text" name="maxSATMath"
								placeholder="Maximum SAT Math"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text" name="minExpenses"
								placeholder="Minimum Expenses"></td>
							<td><input class="searchBar" type="text" name="maxExpenses"
								placeholder="Maximum Expenses"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minPercentFinancialAid"
								placeholder="Minimum Financial Aid Percent"></td>
							<td><input class="searchBar" type="text"
								name="maxPercentFinancialAid"
								placeholder="Maximum Financial Aid Percent"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minNumberApplicants" placeholder="Minumum Applicants"></td>
							<td><input class="searchBar" type="text"
								name="maxNumberApplicants" placeholder="Maximum Applicants"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minPercentAdmitted" placeholder="Minimum Percent Admitted"></td>
							<td><input class="searchBar" type="text"
								name="maxPercentAdmitted" placeholder="Maximum Percent Admitted"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minPercentEnrolled" placeholder="Minimum Percent Enrolled"></td>
							<td><input class="searchBar" type="text"
								name="maxPercentEnrolled" placeholder="Maximum Percent Enrolled"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minAcademicsScale" placeholder="Minimum Academics Scale"></td>
							<td><input class="searchBar" type="text"
								name="maxAcademicsScale" placeholder="Maximum Academics Scale"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minSocialScale" placeholder="Minimum Social Scale"></td>
							<td><input class="searchBar" type="text"
								name="maxSocialScale" placeholder="Maximum Social Scale"></td>
						</tr>
						<tr>
							<td><input class="searchBar" type="text"
								name="minQualityOfLife" placeholder="Minimum Quality of Life"></td>
							<td><input class="searchBar" type="text"
								name="maxQualityOfLife" placeholder="Maximum Quality of Life"></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" class="button" value="Submit">
								<input type="reset" class="button" value="Reset"> <input
								type="button" class="button" value="Advanced <" onclick="toggle()">
							</td>

						</tr>
					</table>
				</form>
			</center>
		</div>
	</div>
		<span class="footer">JavaJunkies</span>

		<script type="text/javascript">
			function toggle() {
				var sa = document.getElementById("sa");
				var s = document.getElementById("s");
				if (sa.style.display === "none") {
					sa.style.display = "block";
					s.style.display = "none";
				} else {
					sa.style.display = "none";
					s.style.display = "block";
				}
			}
		</script>
</body>
</html>