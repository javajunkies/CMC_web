<%@ page language="java" import="CMC2.*" import="java.util.*"%>

	
  <%
    AdminInteraction ai = (AdminInteraction) session.getAttribute("userinteraction");
  	User user = ai.getCurrentUser();
    String username = request.getParameter("Username");
    if(user.getUsername().equals(username)){
        String first = request.getParameter("First");
        String last = request.getParameter("Last");
        String pass = request.getParameter("Pass");
        char t = request.getParameter("Type").charAt(0);
        char s = request.getParameter("Status").charAt(0); 
        
        ai.adminEditUserSameName(username, first, last, pass, t, s);
        response.sendRedirect("viewAccount.jsp");
    }
    String first = request.getParameter("First");
    String last = request.getParameter("Last");
    String pass = request.getParameter("Pass");
    char t = request.getParameter("Type").charAt(0);
    char s = request.getParameter("Status").charAt(0); 
    
    ai.adminEditUser(username, first, last, pass, t, s);
    response.sendRedirect("viewAccount.jsp");
   %>