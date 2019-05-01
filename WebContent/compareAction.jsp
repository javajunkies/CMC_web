<%@page language="java" import="CMC2.*,java.util.*"%>
<%
	ArrayList compareUnis = new ArrayList<String>();
	session.setAttribute("compare", compareUnis);
	%>
	
	<%
	String school = request.getParameter("school");
	if (compareUnis.size() == 0)
	{
		compareUnis.add(school);
		getServletContext().getRequestDispatcher("/results.jsp").forward(request, response);
        
	}
	else if (compareUnis.size() == 1)
	{
		compareUnis.add(school);
		response.sendRedirect("compare.jsp?schoolName1=" + compareUnis.get(0) + "schoolName2=" + compareUnis.get(1));
	}
	
	else
	{
		out.print("error" + compareUnis.toString());
	}

%>