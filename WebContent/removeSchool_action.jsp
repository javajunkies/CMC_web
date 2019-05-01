<%@ page language="java" import="CMC2.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%

AdminInteraction ai = (AdminInteraction)session.getAttribute("username");
String username = ai.getCurrentUser().getUsername();

String name = request.getParameter("school");

try{
	ai.removeUniversity(name);
	response.sendRedirect("ViewSchool.jsp");
	
}catch(Exception e){
	
	out.println(e.getMessage());
}
%>