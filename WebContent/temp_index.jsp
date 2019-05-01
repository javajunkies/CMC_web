<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div class="container">
		<div class="nav">
			<span class="CMC">CMC</span>
			<div class="dropdown">
				<button class="dropbtn">Options</button>
				<div class="dropdown-content">
					<a href="ViewAccount.jsp">Edit Account</a> <a href="logout_action.jsp">Logout</a>
				</div>


			</div>
		</div>

		<center>
			<div class=login>
				<form method="get" action="loginAction.jsp" name="login">
					<table>
						<tbody>
							<tr>
								<td>Username</td>
								<td width=75%><input name="Username" class="username"><br>
								</td>
							</tr>
							<tr>
								<td>Password</td>
								<td width=75%><input type="password" name="Password" class="password" ><br>
								</td>
							</tr>
							<tr>
								<td></td>
								<td>
								<input name="Submit" type="submit" value="Login" class="button">
								<input name="Reset" type="reset" class="button" >
								</td>
							</tr>
							<tr>
								<td></td>
								<td style="vertical-align: top;"><a href="register.jsp">Register</a><br>
								</td>
								<td style="vertical-align: top;"><br></td>
							</tr>
						</tbody>
					</table>
					
				</form>

				<%
					String anyErrors = request.getParameter("Error");
					if (anyErrors != null && anyErrors.equals("1")) {
						out.println("Invalid username.");
					} else if (anyErrors != null && anyErrors.equals("2")) {
						out.println("Invalid password.");
					} else if (anyErrors != null && anyErrors.equals("3")) {
						out.println("Invalid user status.");
					} else if (anyErrors != null && anyErrors.equals("4")) {
						out.println("Invalid user type.");
					} else if (anyErrors != null && anyErrors.equals("5")) {
						out.println("System Error.");
					} else if (anyErrors != null && anyErrors.equals("7")) {
						out.println("User Registered, please wait to be activated by an administrator.");
					}
				%>

			</div>
		</center>
	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>
