<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.jsp"%>
<%@include file="../loggednavbar.jsp"%>
<body>
	<section style="background: #efefe9;">
		<div class="container">
			<div class="row">
				<div class="board">
					<!-- <h2>Welcome to IGHALO!<sup>™</sup></h2>-->
					<div class="board-inner">
						<ul class="nav nav-tabs" id="myTab">
							<li><a href="#home" data-toggle="tab" title="welcome"> <span
									class="round-tabs one"> <i
										class="glyphicon glyphicon-home"></i>
								</span>
							</a></li>

							<li><a href="#profile" data-toggle="tab" title="profile">
									<span class="round-tabs two"> <i
										class="glyphicon glyphicon-user"></i>
								</span>
							</a></li>
							<li><a href="<c:url value='/project/list.do' />"
								data-toggle="tab" title="bootsnipp goodies"> <span
									class="round-tabs three"> <i
										class="glyphicon glyphicon-gift"></i>
								</span>
							</a></li>

							<li><a href="#settings" data-toggle="tab" title="blah blah">
									<span class="round-tabs four"> <i
										class="glyphicon glyphicon-comment"></i>
								</span>
							</a></li>

							<li><a href="#doner" data-toggle="tab" title="completed">
									<span class="round-tabs five"> <i
										class="glyphicon glyphicon-ok"></i>
								</span>
							</a></li>

						</ul>
					</div>
					<form:form method="post"
						action="${pageContext.request.contextPath}/project/searchProject.do">
						<p class="text-right">
							<input type="text" name="itemSearch" maxlength="20"> <input
								type="submit" value="Search"></input>
						</p>
					</form:form>
					<div class="tab-content">
						<div class="tab-pane fade in active" id="home">
							<%-- <p class="text-center">
								<a href="${pageContext.request.contextPath}/project/add"
									class="btn btn-success btn-outline-rounded green"> Survey <span
									style="margin-left: 10px;" class="glyphicon glyphicon-send"></span>
								</a>
							</p> --%>
							<p class="text-center">
								<a href="${pageContext.request.contextPath}/project/itemAdd.do"
									class="btn btn-success btn-outline-rounded green"> ITEM<span
									style="margin-left: 10px;" class="glyphicon glyphicon-send"></span>
								</a>
							</p>
							<div class="table-responsive">
								<table class="table table-hover" id="table">
									<thead>
										<tr>
											<th>id</th>
											<th>Title</th>
											<th>Domain</th>
											<th>Language</th>
											<th>Author</th>
											<th>Created On</th>
											<th>Opsi</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${projects}" var="project">
											
												<tr>
													<td><c:out value="${project.projectId}" /></td>
													<td><c:out value="${project.title}" /></td>
													<td><c:out value="${project.domain}" /></td>
													<td><c:out value="${project.lang}" /></td>
													<td><c:out value="${project.author}" /></td>
													<td><c:out value="${project.created}" /></td>
													<td><a
														href="${pageContext.request.contextPath}/project/edit/${project.projectId}">Edit</a>
														| <a
														href="${pageContext.request.contextPath}/project/${project.projectId}/delete.do">Delete</a>
													</td>
												</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

						<div class="tab-pane fade" id="settings"></div>
						<div class="tab-pane fade" id="profile"></div>
						<div class="tab-pane fade" id="messages"></div>
						<div class="tab-pane fade" id="doner">
							<div class="clearfix"></div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../footer.jsp"%>
</body>
</html>