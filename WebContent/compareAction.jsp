<%@page language="java" import="CMC2.*,java.util.*"%>
<%
 	ArrayList compareUnis = new ArrayList<String>();
 	session.setAttribute("compare", compareUnis);
	%>
	
	<%
	String school = request.getParameter("school");
	
	//gets sesssion var
	Map<String,String[]> params = (Map)session.getAttribute("searchParams");
	
	
	if (compareUnis.size() == 0)
	{
		compareUnis.add(school);
		
		String red = "result.jsp";
		
		int counter = 0;
		for(String key: params.keySet()){
			if (counter == 0)
			{
				red += ("?" + key + "=" +  request.getParameter(key));
			}
			else
			{
				red += ("&" + key + "=" +  request.getParameter(key));
			}

		}
		
		
		out.print(red);
		//response.sendRedirect("");
        
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