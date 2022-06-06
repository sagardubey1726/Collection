
<%
	String username = (String) session.getAttribute("username");
	if (username == null) {
		request.setAttribute("msg", "Please Login First !!");
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	} else {
		String type = (String) session.getAttribute("type");
		if (type.equalsIgnoreCase("admin")) {
%>
<jsp:include page="adminMenu.jsp" />
<%
	}

		else {
%>
<jsp:include page="employeeMenu.jsp" />
<%
	}

	}
%>






