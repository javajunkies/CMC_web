<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="CMC2.*" import="java.util.*"%>
    <%@include file="checkUserLoggedIn.jsp"%>

<%

UserInteraction ui = (UserInteraction) session.getAttribute("username");
String username = ui.getCurrentUser().getUsername();
DBController db = new DBController();

String name = request.getParameter("school");
University univ = db.viewExistingUniversity(name);
String uname = univ.getSchool();

try{
	ui.saveSchool(username, name);
	response.sendRedirect("ViewSaved.jsp");
}
catch(Exception e){
	out.print("error" + username + " " + name);
	out.print(e.getMessage());
}
%>