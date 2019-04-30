<%@page language="java" import="CMC2.*" import="java.util.*"%>
<title>CMC</title>
<%
	UserInteraction ui = new UserInteraction();
	AdminInteraction ai = new AdminInteraction();
	DBController db = new DBController();

	int register = ui.register(request.getParameter("first"), request.getParameter("last"), request.getParameter("username"),request.getParameter("password"),request.getParameter("password1"));
	if (register == 0) {
		response.sendRedirect("temp_index.jsp?Error=7");
	}
	else if(register == 1){
		response.sendRedirect("register.jsp?Error=1");
	}
	else if(register == 2){
		response.sendRedirect("register.jsp?Error=2");
	}
	else if(register == 3){
		response.sendRedirect("register.jsp?Error=3");
	}
	else if(register == 4){
		response.sendRedirect("register.jsp?Error=4");
	}
	else if(register == 5){
		response.sendRedirect("register.jsp?Error=5");
	}
	else{
		response.sendRedirect("register.jsp?Error=6");
	}
		
%>