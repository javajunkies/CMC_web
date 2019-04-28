<%@page language="java" import="CMC2.*,java.util.*"%>

    <%
    UserInteraction ui = new UserInteraction();
    String username = request.getParameter("Username");
    String first = request.getParameter("First");
    String last = request.getParameter("Last");
    String pass = request.getParameter("Pass");
    
    ui.editUserInfo(username, first, last, pass);
    response.sendRedirect("viewAccount.jsp");
    %>