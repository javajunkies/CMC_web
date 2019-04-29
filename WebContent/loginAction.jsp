<%@ page language="java" import="CMC2.*" import="java.util.*"%>

<%
	UserInteraction ui = new UserInteraction();
	AdminInteraction ai = new AdminInteraction();
	DBController db = new DBController();
	Account u = db.findByUsername(request.getParameter("Username"));
	//User u = new User();
	int login;
	if (u.getUsertype() == 'a' || u.getUsertype() == 'A') {

		login = ai.login(request.getParameter("Username"), request.getParameter("Password"));

		if (login == 0) {
			session.setAttribute("username", ai);
			// 		if (u.getType(request.getParameter("Username")) == a) {
			// 			response.sendRedirect("adminHome.jsp");
			// 		} else {
			response.sendRedirect("adminHome.jsp");
		}
	}
	//}
	//else if (u.getType(request.getParameter("Username")) == 'a'){
	//int login = ai.login(request.getParameter("Username"), request.getParameter("Password"));
	else if (u.getUsertype() == 'u' || u.getUsertype() == 'U') {
		login = ui.login(request.getParameter("Username"), request.getParameter("Password"));

		if (login == 0) {
			session.setAttribute("username", ui);
		}
		response.sendRedirect("userHome.jsp");
	} else {
		login = 5;
	}
	//}
	//else{
	//response.sendRedirect("index.jsp");
	//}

	if (login == 1) {
		response.sendRedirect("temp_index.jsp?Error=1");
	} else if (login == 2) {
		response.sendRedirect("temp_index.jsp?Error=2");
	} else if (login == 3) {
		response.sendRedirect("temp_index.jsp?Error=3");
	} else if (login == 4) {
		response.sendRedirect("temp_index.jsp?Error=4");
	} else {
		response.sendRedirect("temp_index.jsp?Error=5");
	}
%>