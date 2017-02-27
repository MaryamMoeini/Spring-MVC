<%@include file="../header.jsp"%>
<body>
<%@include file="../navbar.jsp"%>
    
        <div class="container">

        <h1>Edit Question</h1>
        <form:form class="form-horizontal" role="form" modelAttribute="question" action="${pageContext.request.contextPath}/question/edit" method="post">
                <form:hidden path="id" />
                <div class="form-group">
					<label class="control-label col-sm-2" for="question">Question:</label>
					<div class="col-sm-4">
						<form:input type="question" class="form-control" id="question"
							placeholder="Enter question" path="question"
							value="${question.question}" />
					</div>
				</div>
                
			<div class="form-group">
				<label class="control-label col-sm-2" for="question">User:</label>
				<div class="col-sm-4">
					<form:input type="user" class="form-control" id="user"
						placeholder="Enter user" path="user" value="${question.user}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="question">Rate:</label>
				<div class="col-sm-4">
					<form:input type="rate" class="form-control" id="rate"
						placeholder="Enter rate" path="rate" value="${question.rate}" />
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