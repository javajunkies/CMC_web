<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>

     <%
 	AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
 	String username = request.getParameter("userName");
	User user = ai.viewUserInfo(username);
	String first = user.getFirst();
	String pass = user.getPassword();
	String last = user.getLast();
	String use = user.getUsername();
	char t = user.getUsertype();
 	
	int result = ai.adminEditUser(username, first, last, pass, t, 'N');
	if(result == 1){
		response.sendRedirect("viewUsers.jsp?Result=" + 12); 	
		return;
	}
	response.sendRedirect("viewUsers.jsp?Result=" + result); 	
	%>