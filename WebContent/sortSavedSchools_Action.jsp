<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC2.*" import="java.util.*"%>

<%

try{
	UserInteraction ui = (UserInteraction)session.getAttribute("username");
	String username = ui.getCurrentUser().getUsername();
	String univname = request.getParameter("school");
	int toSortBy = request.getParameter("x");
	
	if() {
		ui.sort(univname, 1);
	}
	else if () {
		ui.sort(univname, 2); 
	}
	else) {
	ui.sort(univname, 3); 
	}
	
	response.sendRedirect("ViewSaved.jsp");
}
catch(Exception e){
	out.println(e.getMessage());
}
%>