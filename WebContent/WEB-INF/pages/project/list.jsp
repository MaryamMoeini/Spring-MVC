<%@include file="../header.jsp"%>
<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<br></br>
		<h1>Projects List</h1>
		<div id="Add">
			<a href="${pageContext.request.contextPath}/project/add">Add</a>
		</div>
		<table class="table table-hover" id="table">
			<thead>
				<tr>
					<th>id</th>
					<th>Title</th>
					<th>Domain</th>
					<th>Author</th>
					<th>Opsi</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${projects}" var="project">
					<tr>
						<td><c:out value="${project.projectId}" /></td>
						<td><c:out value="${project.title}" /></td>
						<td><c:out value="${project.domain}" /></td>
						<td><c:out value="${project.author}" /></td>
						<td><a
							href="${pageContext.request.contextPath}/project/edit/${project.id}">Edit</a>
							| <a
							href="${pageContext.request.contextPath}/project/delete/${project.id}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>