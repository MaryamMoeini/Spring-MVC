<%@include file="header.jsp"%>
<body>
	<%@include file="navbar.jsp"%>
	<!-- Header -->
	<a name="about"></a>

	<div class="intro-header">
		<div class="container">

			<div class="row">
				<div class="col-lg-12">
					<h1 class="headline">
						Create online surveys, quizzes and polls - <span
							class="headline-note">free and unlimited</span>
					</h1>
					<div class="intro-message">
						<h1>Item Repository System</h1>
						<h3>We help you to create questioner and manage your project
							result</h3>
						<hr class="intro-divider">
					</div>
				</div>
			</div>

		</div>
		<!-- /.container -->
	</div>
	<!-- /.intro-header -->

	<!-- Page Content -->
	<a name="services"></a>
	<div class="content-section-a">

		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">
						Services:<br>Free
					</h2>
					<p class="lead">IRS is a free to use online survey builder,
						which has been specifically designed so that it is quick and easy
						to use for people of all experience levels. No compromise on
						customer support? That is why we offer you a chance to upgrade to
						premium support. Since IRS founded in 2015 it has rapidly expanded
						ever since to attract many international clients.</p>
				</div>
				<div class="col-lg-5 col-lg-offset-2 col-sm-6">
					<img class="img-responsive"
						src="<%=request.getContextPath() %>/img/ipad2.png" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>

	<div class="container">
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
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>