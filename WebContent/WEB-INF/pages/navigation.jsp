<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top topnav"
	role="navigation">
	<div class="container topnav">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand topnav" href="#">Item Repository System</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">

				<li><a href="/project/index"> Home</a></li>
				<li><a href="#about">About Us</a></li>
				<li><a href="#services">Help Topics</a></li>
				<li><a href="#contact">Contact</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Sign in <b class="caret"></b></a>
					<ul class="dropdown-menu" style="padding: 15px; min-width: 250px;">
						<li>
							<div class="row">
								<div class="col-md-12">
									<c:if test="${not empty error}">
										<div class="error">${error}</div>
									</c:if>
									<c:if test="${not empty msg}">
										<div class="msg">${msg}</div>
									</c:if>
									<form class="form" role="form" name='loginForm'
										class="form-horizontal" accept-charset="UTF-8" id="login-nav"
										method="post" action="validateLogin.do">

										<div class="form-group">
											<label class="sr-only" for="username">User Name</label> <input
												type="text" class="form-control" name="userName" maxlength="20"
												id="username" value="" placeholder="Email address" required>
										</div>
										<div class="form-group">
											<label class="sr-only" for="password">Password</label> <input
												type="password" class="form-control" name="password"
												id="password" value="" placeholder="Password" required>
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-success btn-block" >Sign
												in</button>
										</div>
										<div>
											<a href="<c:url value='/forgetPassword' />">Forget
												password</a>
										</div>
									</form>
								</div>
							</div>
						</li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
