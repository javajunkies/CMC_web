<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC2.*" import="java.util.*"%>
    

<%

try{
	UserInteraction ui = (UserInteraction)session.getAttribute("username");
	String username = ui.getCurrentUser().getUsername();
	String univname = request.getParameter("school");
	
	ui.saveSchool(username, univname);
	response.sendRedirect("ManageSavedSchools.jsp");
}
catch(Exception e){
	out.println(e.getMessage());
}
%>