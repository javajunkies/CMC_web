<%@ page language="java" import="CMC2.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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
