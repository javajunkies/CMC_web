<%@page language="java" import="CMC2.*" import="java.util.*"%>

    <%
    UserInteraction ui = (UserInteraction)session.getAttribute("username");
    DBController db = new DBController();
    String username = request.getParameter("Username");
    String first = request.getParameter("First");
    String last = request.getParameter("Last");
    String pass = request.getParameter("Pass");
    
    ui.editUserInfo(username, first, last, pass);
    response.sendRedirect("ViewAccount.jsp");
	ui.setCurrentUser((User) db.findByUsername(username));
    %>