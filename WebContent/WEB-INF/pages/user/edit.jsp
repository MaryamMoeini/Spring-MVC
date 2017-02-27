<%@include file="../header.jsp"%>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">

		<h1>Edit</h1>
		<form:form class="form-horizontal" role="form" modelAttribute="user"
			action="${pageContext.request.contextPath}/user/edit" method="post">

			<form:hidden path="id" />
			<div class="form-group">
				<label class="control-label col-sm-2" for="question">User
					Name:</label>
				<div class="col-sm-4">
					<form:input type="user" class="form-control" id="user"
						placeholder="Enter user" path="user" value="${user.username}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="question">Email:</label>
				<div class="col-sm-4">
					<form:input type="email" class="form-control" id="email"
						placeholder="Enter email" path="email" value="${user.email}" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button type="submit" class="btn btn-default">Save</button>
				</div>
			</div>
		</form:form>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>