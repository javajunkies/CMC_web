<%@ page language="java" import="CMC2.*" import="java.util.*"%>

	
   <%
    AdminInteraction ai = (AdminInteraction)session.getAttribute("username");
    
   char t = request.getParameter("Type").charAt(0);
   char s = request.getParameter("Status").charAt(0);
   User user = new User(request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Username"),request.getParameter("Password"), t, s); 
   ai.adminEditUser(username, firstName, lastName, password, type, status)(user);
    
    ai.adminEditUser(username, first, last, pass, t , s);
    response.sendRedirect("viewAccount.jsp");
   %>
   
   <% 
  AdminInteraction ai = (AdminInteraction)session.getAttribute("username");

  char t = request.getParameter("Type").charAt(0);
  char s = request.getParameter("Status").charAt(0);
  User user = new User(request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Username"),request.getParameter("Password"), t, s); 
  ai.addNewUser(user);
%>