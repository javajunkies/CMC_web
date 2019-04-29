<%@ page language="java" import="CMC2.*" import="java.util.*"%>

	
  <%
    UserInteraction ai = new UserInteraction();
    String username = request.getParameter("Username");
    String first = request.getParameter("First");
    String last = request.getParameter("Last");
    String pass = request.getParameter("Pass");
    //char t = request.getParameter("Type").charAt(0);
    //char s = request.getParameter("Status").charAt(0); 
    
    ai.editUserInfo(username, first, last, pass);
    response.sendRedirect("viewAccount.jsp");
   %>