<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="prevent.jsp" />
<%
String type=(String)session.getAttribute("type");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
</head>
<body>
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">USERNAME</th>
      
      <%
      if(type.equalsIgnoreCase("admin")){
    	 %>
    	 <th scope="col">PASSWORD</th>
    	 <% 
      }
      %>
      
      
      <th scope="col">PHONE</th>
      <th scope="col">DEPARTMENT</th>
      <th scope="col">CITY</th>
      <th scope="col">TYPE</th>
      <th scope="col">QUESTION</th>
      <th scope="col">ANSWER</th>
      <%
      if(type.equalsIgnoreCase("admin")){
    	 %>
    	 <th scope="col">STATUS</th>
    	  <th scope="col">ACTION</th>
    	 <% 
      }
      %>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var="emp" items="${employees}">
    <tr>
    <td><c:out value="${emp.id}"/></td>
    <td><c:out value="${emp.username}"/></td>
     <%
      if(type.equalsIgnoreCase("admin")){
    	 %>
    	 <td><c:out value="${emp.password}"/></td>
    	 <% 
      }
      %>
    <td><c:out value="${emp.phone}"/></td>
    <td><c:out value="${emp.department}"/></td>
    
    <td><c:out value="${emp.city}"/></td>
    <td><c:out value="${emp.type}"/></td>
    <td><c:out value="${emp.question}"/></td>
    <td><c:out value="${emp.answer}"/></td>
   
    
     <%
      if(type.equalsIgnoreCase("admin")){
    	 %>
    	  <td><c:out value="${emp.status}"/></td>
    	 <th>
    <a href=deleteEmployee?id=${emp.id}>DELETE</a> | 
    <a href=profile?username=${emp.username}&msg=null>UPDATE</a>
    </th>
    	 <% 
      }
      %>
    
    </tr>
    
    </c:forEach>
     
  </tbody>
</table>

</body>
</html>