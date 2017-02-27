<%@include file="header.jsp"%>
<body>
<%@include file="navbar.jsp"%>

	<div class="container">
<h1 class="headline">Create online surveys, quizzes and polls - <span class="headline-note">free and unlimited</span></h1>

		<sec:authorize access="hasRole('ROLE_USER')">
			<!-- For login user -->
			<c:url value="/logout" var="logoutUrl" />
			<form action="${logoutUrl}" method="post" id="logoutForm">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			<script>
				function formSubmit() {
					document.getElementById("logoutForm").submit();
				}
			</script>

			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<h2>
					User : ${pageContext.request.userPrincipal.name} | <a
						href="javascript:formSubmit()"> Logout</a>
				</h2>
			</c:if>


		</sec:authorize>
		<sec:authorize access="!hasRole('ROLE_USER')"> 
	</sec:authorize>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<fieldset>
						<legend>Welcome to IRS</legend>
						<c:if test="${not empty error}">
							<div class="error">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
							<div class="msg">${msg}</div>
						</c:if>
						<form name='loginForm' class="form-horizontal"
							action="<c:url value='/login' />" method='POST'>

							<div class="control-group">
								<label class="control-label">User Name</label>
								<div class="controls">
									<input type="text" name="username" id="username"
										title="User Name" value="">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Password</label>
								<div class="controls">
									<input type="password" name="password" id="password"
										title="Last Name" value="">
								</div>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

							<div class="form-actions">
								<button type="submit" class="btn btn-success">Submit</button>
							</div>
						</form>

						<form:form id="registrationform" class="form-horizontal"
							modelAttribute="user" method="POST" action="register">

							<div class="control-group">
								<label class="control-label">User Name</label>
								<div class="controls">
									<input name="userName" id="userName" value="" type="text" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Password</label>
								<div class="controls">
									<input name="password" id="password" type="password" value="" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email</label>
								<div class="controls">
									<input name="email" id="email" type="email" value="" />
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-success">Sign up</button>
							</div>
						</form:form>

					</fieldset>
				</div>
			</div>
		</div>
	</div>
</body>
</html>