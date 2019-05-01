<%@page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
    <%
    UserInteraction ui = (UserInteraction)session.getAttribute("username");
    DBController db = new DBController();
    String username = request.getParameter("Username");
    String first = request.getParameter("First");
    String last = request.getParameter("Last");
    String pass = request.getParameter("Pass");
    if(ui.editUserInfo(username, first, last, pass) == 1){
        response.sendRedirect("ViewAccount.jsp?Result=1");
        ui.setCurrentUser((User) db.findByUsername(username));
    }
    else if(ui.editUserInfo(username, first, last, pass) == 2 || ui.editUserInfo(username, first, last, pass) == 3){
    	response.sendRedirect("ViewAccount.jsp?Result=-1");
    }
    else if (ui.editUserInfo(username, first, last, pass) == -1){
    	response.sendRedirect("ViewAccount.jsp?Result=-2");

    }
    else if(ui.editUserInfo(username, first, last, pass) == -2){
    	response.sendRedirect("ViewAccount.jsp?Result=-3");

    }
    %>