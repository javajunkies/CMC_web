<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC2.*"%>
    

<%

try{
	UserController uc = new UserController();
	UserInteraction ui = new UserInteraction();
	String username = uc.getCurrentUser().getUsername();

	String name = request.getParameter("SchoolName");
	University univ;
	univ.getSchool();
	ui.saveSchool(username, univ);
	response.sendRedirect("ManageSavedSchools.jsp");
}
catch(Exception e){
	out.println(e.getMessage());
}
%>