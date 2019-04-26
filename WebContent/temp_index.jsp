<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<html>
<head>
<title>CMC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div class="container">
		<div class="nav">
			<span class="CMC">CMC</span>
			<div class="dropdown">
				<button class="dropbtn">User</button>
				<div class="dropdown-content">
					<a href="/???.jsp">Edit Account</a> <a href="/???.jsp">Logout</a>
				</div>
			</div>
		</div>





		<table style="text-align: left; position=absolute; width: 286px; height: 97px;"
			border="1" cellpadding="2" cellspacing="2">
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
		<br>






	</div>
	<span class="footer">JavaJunkies</span>
</body>
</html>
