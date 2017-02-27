
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<style type="text/css">
.bs-example {
	margin: 20px;
}
/* Fix alignment issue of label on extra small devices in Bootstrap 3.2 */
.form-horizontal .control-label {
	padding-top: 7px;
}
</style>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-sm-6">
				<hr class="section-heading-spacer">
				<div class="clearfix"></div>
				<h2 class="section-heading">
					<br> IRS
				</h2>
				<p class="lead">IRS is a free to use online survey builder,
					which has been specifically designed so that it is quick and easy
					to use for people of all experience levels. No compromise on
					customer support? That is why we offer you a chance to upgrade to
					premium support. Since IRS founded in 2015 it has rapidly expanded
					ever since to attract many international clients.</p>
			</div>
			<div class="col-lg-5 col-lg-offset-2 col-sm-6">
				<hr class="section-heading-spacer">
				<div class="clearfix"></div>
				<h2 class="section-heading">Register</h2>
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
				<c:if test="${not empty msg}">
					<div class="msg">${msg}</div>
				</c:if>

				<form:form id="registrationform" class="form-horizontal"
					modelAttribute="user" method="POST" action="register">

					<div class="form-group">
						<label class="control-label col-xs-2">User Name</label>
						<div class="col-xs-10">
							<input name="userName" id="userName" value="" type="text" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">Password</label>
						<div class="col-xs-10">
							<input name="password" id="password" type="password" value="" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">Email</label>
						<div class="col-xs-10">
							<input name="email" id="email" type="email" value="" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<button type="submit" class="btn btn-primary">Sign up</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>

	</div>
	<%@include file="footer.jsp"%>
</body>
</html>