<%@ page language="java" import="CMC2.*" import="java.util.*"%>

<%
//clear secession var
UserController uc = (UserInteraction)session.getAttribute("username");
String uname = uc.getCurrentUser().getUsername();
response.sendRedirect("index.jsp");

%>