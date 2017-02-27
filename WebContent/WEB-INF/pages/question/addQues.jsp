<%@include file="../header.jsp"%>
<%@include file="../navbar.jsp"%>
<style>

</style>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 irs-body">
				<p>Define the questions here.</p>

			</div>
			<div class="col-md-6  irs-body">
				<form:form class="form-horizontal" role="form"
					modelAttribute="question"
					action="${pageContext.request.contextPath}/question/add"
					method="post">
					<form:hidden path="id" />
					<div class="form-group">
						<label class="control-label col-sm-2" for="type">Type:</label>
						<div class="col-sm-4">
						<form:select path="type" class="form-control">
								<form:option value="NONE" label="--- Select ---" />
								<form:option value="Text" label="Simple Text" />
								<form:option value="Checkbox" label="Checkbox" />
								<form:option value="dropdown" label="Dropdown" />
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="question">Question:</label>
						<div class="col-sm-4">
							<form:input type="question" class="form-control" id="question"
								placeholder="Enter question" path="question"
								value="${question.question}" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<button type="submit" class="btn btn-success">Next</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>