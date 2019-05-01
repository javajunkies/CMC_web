<%@page language="java" import="CMC2.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<br>
<br>
<br>
<body>
	<div class="container">
		<div class="nav">
			<span class="CMC">CMC</span>
			<div class="dropdown">
				<button class="dropbtn">Welcome!</button>
				<div class="dropdown-content">
								</div>


			</div>
		</div>
		
		<center>
			<div class="inside">
				<form method="get" action="registerAction.jsp" name="Register">
					<table>
						<tbody>
							<tr>
								<td style="vertical-align: top;">First Name<br>
								</td>
								<td style="vertical-align: top;"><input name="first"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;">Last Name<br>
								</td>
								<td style="vertical-align: top;"><input name="last"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;">Username<br>
								</td>
								<td style="vertical-align: top;"><input name="username"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;">Password (must be 8
									characters and contain at least one letter and one number)<br>
								</td>
								<td style="vertical-align: top;"><input name="password"><br>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: top;">Confirm Password<br>
								</td>
								<td style="vertical-align: top;"><input name="password1"><br>
								</td>
							</tr>
							<tr>
							<td></td><td>
								<input name="Reset" type="reset" class="button">
								<input name="Submit" type="submit" value="Register" class="button">
							</td>
							</tr>

						</tbody>
					</table>
				
					
				</form>
				<%
				String anyErrors = request.getParameter("Error");
				if (anyErrors != null && anyErrors.equals("1")) {
					out.println("Password must be atleast 8 characters");
				} else if (anyErrors != null && anyErrors.equals("2")) {
					out.println("Password must contain atleast one letter.");
				} else if (anyErrors != null && anyErrors.equals("3")) {
					out.println("Password must contain atleast one number.");
				} else if (anyErrors != null && anyErrors.equals("4")) {
					out.println("Username already taken.");
				} else if (anyErrors != null && anyErrors.equals("5")) {
					out.println("Passwords do not match.");
				} else if (anyErrors != null && anyErrors.equals("6")) {
					out.println("Database error when registering, please try again later.");
				}
			%>
			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>