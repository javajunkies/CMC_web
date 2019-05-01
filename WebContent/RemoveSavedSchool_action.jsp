<%@ page language="java" import="CMC2.*"%>
<%

UserInteraction ui = (UserInteraction)session.getAttribute("username");
String username = ui.getCurrentUser().getUsername();
DBController db = new DBController();

String name = request.getParameter("school");

try{
	ui.removeSavedSchool(username, name);
	response.sendRedirect("ViewSaved.jsp");
	
}catch(Exception e){
	
	out.println(e.getMessage());
}
%>