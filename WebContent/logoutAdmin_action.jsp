<%@ page language="java" import="CMC2.*" import="java.util.*"%>

<%
//clear secession var
AdminInteraction ai = (AdminInteraction) session.getAttribute("username");
String aname = ai.getCurrentUser().getUsername();
response.sendRedirect("temp_index.jsp");

%>