<%@include file="../header.jsp"%>

<%@include file="../navbar.jsp"%>
<body>
	<section style="background: #efefe9;">
		<div class="container">
			<div class="row">
				<div class="board">
					<!-- <h2>Welcome to IGHALO!<sup>™</sup></h2>-->
					<div class="board-inner">
						<ul class="nav nav-tabs" id="myTab">
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
							<p class="text-center">
								<a href="${pageContext.request.contextPath}/project/add"  class="btn btn-success btn-outline-rounded green">
									Create Project <span style="margin-left: 10px;"
									class="glyphicon glyphicon-send"></span>
								</a>
							        <form:form class="form-horizontal" role="form" modelAttribute="project" 
							         action="${pageContext.request.contextPath}/project/edit" method="post">
							            <form:hidden path="id" />
							            <form:hidden path="lang" />
										<div class="form-group">
											<label class="control-label col-sm-4" for="title">Title:</label>
											<div class="col-sm-4">
												<form:input type="title" class="form-control" id="title" placeholder="Enter title" path="title"
													value="${project.title}" />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-4" for="project">Domain:</label>
											<div class="col-sm-4">
												<form:input type="domain" class="form-control" id="domain"
													placeholder="Enter user" path="domain" value="${project.domain}" />
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
												<button type="submit" class="btn btn-default">Save</button>
											</div>
										</div>
							    </form:form>
							</p>
							       
						
							</div>
						<div class="tab-pane fade" id="profile">
							<h3 class="head text-center">
								Create a Bootsnipp<sup>™</sup> Profile
							</h3>
							<p class="narrow text-center">Lorem ipsum dolor sit amet, his
								ea mollis fabellas principes. Quo mazim facilis tincidunt ut,
								utinam saperet facilisi an vim.</p>

							<p class="text-center">
								<a href="" class="btn btn-success btn-outline-rounded green">
									create your profile <span style="margin-left: 10px;"
									class="glyphicon glyphicon-send"></span>
								</a>
							</p>

						</div>
						<div class="tab-pane fade" id="messages">
							<h3 class="head text-center">Bootsnipp goodies</h3>
							<p class="narrow text-center">Lorem ipsum dolor sit amet, his
								ea mollis fabellas principes. Quo mazim facilis tincidunt ut,
								utinam saperet facilisi an vim.</p>

							<p class="text-center">
								<a href="" class="btn btn-success btn-outline-rounded green">
									start using bootsnipp <span style="margin-left: 10px;"
									class="glyphicon glyphicon-send"></span>
								</a>
							</p>
						</div>
						<div class="tab-pane fade" id="settings">
							<h3 class="head text-center">Drop comments!</h3>
								<p class="narrow text-center">Lorem ipsum dolor sit amet, his
									ea mollis fabellas principes. Quo mazim facilis tincidunt ut,
									utinam saperet facilisi an vim.
								</p>
							<p class="text-center">
								<a href="" class="btn btn-success btn-outline-rounded green">
									start using bootsnipp <span style="margin-left: 10px;"
									class="glyphicon glyphicon-send"></span>
								</a>
							</p>
						</div>
						<div class="tab-pane fade" id="doner">
							<div class="text-center">
								<i class="img-intro icon-checkmark-circle"></i>
							</div>
							<h3 class="head text-center">
								thanks for staying tuned! <span style="color: #f48260;">♥</span>
								Bootstrap
							</h3>
							<p class="narrow text-center">Lorem ipsum dolor sit amet, his
								ea mollis fabellas principes. Quo mazim facilis tincidunt ut,
								utinam saperet facilisi an vim.</p>
						</div>
						<div class="clearfix"></div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<%@include file="../footer.jsp"%>
</body>
</html>


<%@include file="../header.jsp"%>
<body>
<%@include file="../navbar.jsp"%>
        <div class="container irs-body">

    </div>
            <%@include file="../footer.jsp"%>
    </body>    
</html>