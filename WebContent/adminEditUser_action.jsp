<%@ page language="java" import="CMC2.*" import="java.util.*"%>

	
  <%
    AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
	String username = request.getParameter("Username");
	String first = request.getParameter("First Name");
    String last = request.getParameter("Last Name");
    String pass = request.getParameter("Password");
    String type = request.getParameter("Type");
    String status = request.getParameter("Status");
    if(type.equals("") || status.equals("")){
    	response.sendRedirect("viewUsers.jsp?Result=2");
    	return;
    }
    char t = type.charAt(0);
    char s = status.charAt(0); 
	int result = ai.adminEditUser(username, first, last, pass, t, s);
	response.sendRedirect("viewUsers.jsp?Result=" + result);
   %>

