<%@include file="header.jsp"%>
<body>
	<div class="container">

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<fieldset>
						<legend>Login Repository Item</legend>

						
						<form name='loginForm' class="form-horizontal"
							action="validateLogin.do" method='POST'>



							<div class="control-group">
								<label class="control-label">User Name</label>
								<div class="controls">
									<input type="text" name="userName" id="username"
										title="User Name" value="">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Password</label>
								<div class="controls">
									<input type="password" name="password" id="password"
										title="Last Name" value="">
								</div>
							</div>

							<div class="form-actions">
								<button type="submit" class="btn btn-success">Submit</button>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
</body>
</html>