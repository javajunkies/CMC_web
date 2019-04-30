<%@ page language="java" import="CMC2.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
try{
	UserInteraction ui = (UserInteraction)session.getAttribute("Name");
	String name = request.getParameter("Name");
	String uname = ui.getCurrentUser().getUsername();
	ui.removeSavedSchool(uname, name);
	
	response.sendRedirect("ManageSavedSchools.jsp");
	
}catch(Exception e){
	
	out.println(e.getMessage());
}
%>

</html>