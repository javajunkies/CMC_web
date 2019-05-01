<%@ page language="java" import="CMC2.*"%>
<%

UserInteraction ui = (UserInteraction)session.getAttribute("username");
String username = ui.getCurrentUser().getUsername();

String name = request.getParameter("school");

try{
	ui.removeSavedSchool(username, name);
	response.sendRedirect("ViewSaved.jsp");
	
}catch(Exception e){
	
	out.println(e.getMessage());
}
%>