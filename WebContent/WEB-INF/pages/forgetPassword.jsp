<%-- <%@include file="header.jsp"%> --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<style type="text/css">
.bs-example {
	margin: 40px;
}
/* Fix alignment issue of label on extra small devices in Bootstrap 3.2 */
.form-horizontal .control-label {
	padding-top: 40px;
}

.page-title {
	margin-top: 60px;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
}
</style>
<%-- <%@include file="navbar.jsp"%> --%>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="navbar.jsp" />
	<div class="page-title">

		<div class="row">
			<form id="forgetpassform" class="form-horizontal" method="POST"
				action="${pageContext.request.contextPath}/passwordMessageSend">
				<h3 align="center">Forget password</h3>
				<div class="form-group">
					<label class="control-label col-xs-2">Email</label>
					<div class="col-xs-10">
						<input name="email" id="email" type="email" value="" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>