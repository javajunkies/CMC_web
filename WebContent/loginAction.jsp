<%@ page language="java" import="CMC2.*" import="java.util.*" %>

<%
User u = new User();
//if(a.getType(request.getParameter("Username"))==u){
UserInteraction ui = new UserInteraction();

int login = ui.login(request.getParameter("Username"), request.getParameter("Password"));

if(login==0){
	session.setAttribute("username",ui);
	if(u.getType(request.getParameter("Username"))==a){
		response.sendRedirect("adminHome.jsp");
	}
	else{
		response.sendRedirect("userHome.jsp");
	}
}
else if(login == 1){
	response.sendRedirect("index.jsp?Error=1");
}
else if(login == 2){
	response.sendRedirect("index.jsp?Error=2");
}
else if(login == 3){
	response.sendRedirect("index.jsp?Error=3");
}
else if(login == 4){
	response.sendRedirect("index.jsp?Error=4");
}
else{
	response.sendRedirect("index.jsp?Error=5");
}

