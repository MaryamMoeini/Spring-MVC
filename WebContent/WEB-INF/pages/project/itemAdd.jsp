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
							<!-- <div class="liner"></div> -->

							<li class="active"><a href="#home" data-toggle="tab"
								title="welcome"> <span class="round-tabs one"> <i
										class="glyphicon glyphicon-home"></i>
								</span>
							</a></li>

							<li><a href="#profile" data-toggle="tab" title="profile">
									<span class="round-tabs two"> <i
										class="glyphicon glyphicon-user"></i>
								</span>
							</a></li>
							<li><a href="#messages" data-toggle="tab"
								title="bootsnipp goodies"> <span class="round-tabs three">
										<i class="glyphicon glyphicon-gift"></i>
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

					<div class="tab-content">
						<div class="tab-pane fade in active" id="home">
							<form:form class="form-horizontal" role="form"
								modelAttribute="project"
								action="saveProject.do"
								method="post">
								<div class="form-group">
									<label class="control-label col-sm-4" for="title">Title:</label>
									<div class="col-sm-4">
										<form:input type="title" class="form-control" id="title"
											placeholder="Enter title" path="title"
											 maxlength="20"/>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="domain">Domain:</label>
									<div class="col-sm-4">
										<form:select path="domain" class="form-control" id="domain">
											<form:option value="Education" label="Education" />
											<form:option value="Phycology" label="Phycology" />
										</form:select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="lang">Language:</label>
									<div class="col-sm-4">
										<form:select path="lang" class="form-control">
											<form:option value="English" label="English" />
											<form:option value="Malay" label="Malay" />
											<form:option value="Bilingual" label="Bilingual" />
										</form:select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="project">Author:</label>
									<div class="col-sm-4">
											<form:input type="author" class="form-control" id="author" readonly="true"
													placeholder="Enter author" path="author" value="${pageContext.request.userPrincipal.name}" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-4">
										<button type="submit" class="btn btn-success">Next</button>
									</div>
								</div>
							</form:form>

						</div>
						<div class="tab-pane fade" id="profile"></div>
						<div class="tab-pane fade" id="messages"></div>
						<div class="tab-pane fade" id="settings"></div>
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