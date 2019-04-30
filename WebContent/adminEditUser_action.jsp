<%@ page language="java" import="CMC2.*" import="java.util.*"%>

	
  <%
    AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
  	User user = ai.getCurrentUser();
    String username = request.getParameter("Username");
    if(user.getUsername().equals(username)){
        String first = request.getParameter("First Name");
        String last = request.getParameter("Last Name");
        String pass = request.getParameter("Password");
        char t = request.getParameter("Type").charAt(0);
        char s = request.getParameter("Status").charAt(0); 
        
        ai.adminEditUserSameName(username, first, last, pass, t, s);
        response.sendRedirect("viewUsers.jsp");
        return;
    }
    String first = request.getParameter("First Name");
    String last = request.getParameter("Last Name");
    String pass = request.getParameter("Password");
    char t = request.getParameter("Type").charAt(0);
    char s = request.getParameter("Status").charAt(0); 
    
    ai.adminEditUser(username, first, last, pass, t, s);
    response.sendRedirect("viewUsers.jsp");
   %>

