<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkUserLoggedIn.jsp"%>
<%
//clear secession var
UserInteraction uc = (UserInteraction)session.getAttribute("username");
String uname = uc.getCurrentUser().getUsername();
response.sendRedirect("temp_index.jsp");

%>