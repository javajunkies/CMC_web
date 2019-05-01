<%@page language="java" import="CMC2.*" import="java.util.*"%>
<%
	AdminInteraction ai2 = (AdminInteraction) session.getAttribute("username");
	if(ai2 == null || ai2.isLoggedIn() == false){
		response.sendRedirect("temp_index.jsp?Error=10");
		return;
	}
%>