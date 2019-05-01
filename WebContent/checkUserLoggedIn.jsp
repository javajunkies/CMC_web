<%@page language="java" import="CMC2.*" import="java.util.*"%>
<%
	UserInteraction ui2 = (UserInteraction) session.getAttribute("username");
	if(ui2 == null || ui2.isLoggedIn() == false){
		response.sendRedirect("temp_index.jsp?Error=10");
		return;
	}
%>