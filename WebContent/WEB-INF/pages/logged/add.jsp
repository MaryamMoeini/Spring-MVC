<%@include file="../header.jsp"%>
<body>
<%@include file="../navbar.jsp"%>
	<div class="container">

		<h1>New Answer</h1>
		<form:form class="form-horizontal" role="form"
			modelAttribute="answer"
			action="${pageContext.request.contextPath}/answer/add"
			method="post">
			<form:hidden path="id" />
			<div class="form-group">
				<label class="control-label col-sm-2" for="answerText">Answer:</label>
				<div class="col-sm-4">
					<form:input type="answerText" class="form-control" id="answerText"
						placeholder="Enter answer" path="answer"
						value="${answer.answerText}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="question">Qestion:</label>
				<div class="col-sm-4">
					<form:input type="question" class="form-control" id="question"
						placeholder="Enter question" path="question" value="${answer.question}" />
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