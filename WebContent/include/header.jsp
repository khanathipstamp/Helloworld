<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div align="center">
	<div align="center">

		<nav class="navbar navbar-expand-sm bg-dark">

			<!-- Links -->
			<a class="navbar-brand"
				href="${pageContext.request.contextPath }/index.jsp"> <img
				src="images/f.png" class="rounded" alt="Logo" style="width: 50px;">
			</a>
			<h1 style="color:blue;">FIFA55</h1>
			<ul class="navbar-nav ml-auto">
				<%
					if (session.getAttribute("user") != null) {
				%>
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath }/index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/logout">Logout</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/register.jsp">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/profile.jsp">ProFile</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/about.jsp">About</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/bootstrap.jsp">Bootstrap</a>
				</li>
				<%
					} else {
				%>
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath }/index.jsp">Home</a></li>

				<li class="nav-item"><a class="nav-link"
					class="nav navbar-nav navbar-right"
					href="${pageContext.request.contextPath }/login.jsp">Login</a></li>


				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/register.jsp">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/about.jsp">About</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/bootstrap.jsp">Bootstrap</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/calculator.jsp">Calculator</a>
				</li>
				<%
					}
				%>
			</ul>
			<ul class="navbar-nav ">
				<form class="form-inline" action="/action_page.php">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search">
					<button class="btn btn-success" type="submit">Search</button>
				</form>
			</ul>

		</nav>
	</div>
	<div style="background-color: yellow">
		<marquee behavior="alternate">
			<h6>Your bouncing text goes here</h6>
		</marquee>
	</div>

</div>
</div>