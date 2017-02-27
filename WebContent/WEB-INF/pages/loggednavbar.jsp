<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top topnav"
	role="navigation">
	<div class="container topnav">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand topnav" href="#">Item Repository System</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">${pageContext.request.userPrincipal.name} Welcome</a></li>
				<li><a href="#"> Home</a></li>
				<li><a href="#about">About Us</a></li>
				<li><a href="#services">Help Topics</a></li>
				<li><a href="#contact">Contact</a></li>
				<li><a href="#">Log Out</a></li>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				
				</sec:authorize>
				<li><c:url value="/logout" var="logoutUrl" />
					<form action="${logoutUrl}" method="post" id="logoutForm">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form> <script>
						function formSubmit() {
							document.getElementById("logoutForm").submit();
						}
					</script> <c:if test="${pageContext.request.userPrincipal.name != null}">
						<a href="javascript:formSubmit()"> Logout</a>
					</c:if></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
</nav>
<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>
