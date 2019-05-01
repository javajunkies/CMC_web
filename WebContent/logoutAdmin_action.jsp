<%@ page language="java" import="CMC2.*" import="java.util.*"%>
<%@include file="checkAdminLoggedIn.jsp"%>
<%
//clear secession var
AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
String aname = ai.getCurrentUser().getUsername();
ai.logoff();
response.sendRedirect("temp_index.jsp");

%>