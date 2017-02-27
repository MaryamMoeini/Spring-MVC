<%@include file="../header.jsp"%>
<%@include file="../navbar.jsp"%>
<body>
    
        <div class="container">
        <h1 class="irs-body">Edit Question</h1>
         <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> <script type="text/javascript">
//<![CDATA[
        bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
  //]]>
  </script>
        <form:form class="form-horizontal" role="form" modelAttribute="question" action="${pageContext.request.contextPath}/question/edit" method="post">
                <form:hidden path="id" />
					<div class="form-group">
						<label class="control-label col-sm-2" for="question">Question:</label>
						<div class="col-sm-4">
							 <td><textarea name="question" value="${question.question}" cols="40">
</textarea><br /></td>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="type">Type:</label>
						<div class="col-sm-4">
						<form:select path="type" class="form-control">
								<form:option value="NONE" label="--- Select ---" />
								<form:option value="Text" label="Text" />
								<form:option value="Boolean" label="Boolean" />
								<form:option value="Option" label="Option" />
							</form:select>
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