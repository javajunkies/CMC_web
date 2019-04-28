<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<html>
<head>
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<body>
	<form method="get" action="loginAction.jsp" name="login">
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><input name="Submit"
						type="submit"><br></td>
					<td style="vertical-align: top;"><input name="Reset"
						type="reset"><br></td>
				</tr>
			</tbody>
		</table>
		<span style="text-decoration: underline;"><br> </span> <br>
	</form>
	
<% 	String anyErrors = request.getParameter("Error");
	if(anyErrors != null && anyErrors.equals("1")){
		out.println("Invalid username.");
	}
	else if(anyErrors != null && anyErrors.equals("2")){
		out.println("Invalid password.");
	}
	else if(anyErrors != null && anyErrors.equals("3")){
		out.println("Invalid user status.");
	}
	else if(anyErrors != null && anyErrors.equals("4")){
		out.println("Invalid user type.");
	}
	else if(anyErrors != null && anyErrors.equals("5")){
		out.println("System Error.");
	}

	%>

	<span class="footer">JavaJunkies</span>
</body>
</html>
