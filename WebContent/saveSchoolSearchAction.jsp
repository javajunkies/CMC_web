<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="CMC2.*" import="java.util.*"%>
    

<%

UserInteraction ui = (UserInteraction) session.getAttribute("username");
String username = ui.getCurrentUser().getUsername();
DBController db = new DBController();

String name = request.getParameter("school");
University univ = db.viewExistingUniversity(name);
String uname = univ.getSchool();

try{
	ui.saveSchool(username, uname);
	response.sendRedirect("ViewSaved.jsp");
}
catch(Exception e){
	out.print("error" + username + " " + uname);
	out.print(e.getMessage());
}
%>