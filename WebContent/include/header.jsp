<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div align="center" >
<div align="center" class="card" style="width: 50rem;" >
<div  class="card-header" ><h1>Hello World Web develoment</h1></div>

<h1 >This is a heading</h1>



<div  class="btn-group" role="group" aria-label="Basic example">
<%
if(session.getAttribute("user")!=null){
	%>
	<a href="${pageContext.request.contextPath }/index.jsp">Home</a>|
	<a href="${pageContext.request.contextPath }/logout">Logout</a>|
	<a href="${pageContext.request.contextPath }/profile.jsp">Profile</a>|
	<a href="${pageContext.request.contextPath }/register.jsp">Register</a>
	<% 
}
else{
	%>
	<a href="${pageContext.request.contextPath }/index.jsp">Home</a>|
	<a href="${pageContext.request.contextPath }/login.jsp">Login</a>|
	<a href="${pageContext.request.contextPath }/register.jsp">Register</a>|
	<a href="${pageContext.request.contextPath }/about.jsp">About</a>

	<%
}
%>
</div>
</div>
</div>