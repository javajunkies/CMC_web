<%@page language="java" import="CMC2.*" import="java.util.*"%>

	<%	
	AdminInteraction ai = (AdminInteraction)session.getAttribute("username");    
	String username = request.getParameter("userName");
	User user = ai.viewUserInfo(username);
	%>
	

<html>
<head>

<title>Admin Edit User Form</title>
</head>
<body>
<br>
Edit User:<%=username%><br>
<br>

<form method="post" action="adminEditUser_action.jsp" name="adminEditUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly" name="Username" value="<%=user.getUsername()%>"><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="First Name" value="<%=user.getFirst()%>"><br>

</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="Last Name" value="<%=user.getLast()%>"> </td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" value="<%=user.getPassword()%>"> </td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type" value="<%=user.getUsertype()%>"> </td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value="<%=user.getStatus()%>"> </td>
</tr>
<tr>



<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>