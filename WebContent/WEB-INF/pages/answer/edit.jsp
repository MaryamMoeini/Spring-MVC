<%@include file="../header.jsp"%>
<body>
<%@include file="../navbar.jsp"%>
    
        <div class="container">

        <h1>Edit Answer</h1>
        <form:form class="form-horizontal" role="form" modelAttribute="answer" action="${pageContext.request.contextPath}/answer/edit" method="post">
                <form:hidden path="id" />
                <div class="form-group">
					<label class="control-label col-sm-2" for="answer">Question:</label>
					<div class="col-sm-4">
						<form:input type="answer" class="form-control" id="answer"
							placeholder="Enter answer" path="answer"
							value="${answer.answer}" />
					</div>
				</div>
                
			<div class="form-group">
				<label class="control-label col-sm-2" for="answer">User:</label>
				<div class="col-sm-4">
					<form:input type="user" class="form-control" id="user"
						placeholder="Enter user" path="user" value="${answer.user}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="answer">Rate:</label>
				<div class="col-sm-4">
					<form:input type="rate" class="form-control" id="rate"
						placeholder="Enter rate" path="rate" value="${answer.rate}" />
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