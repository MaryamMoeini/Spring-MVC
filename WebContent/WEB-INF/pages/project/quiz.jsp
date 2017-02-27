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
								modelAttribute="quizitem"
								action="${pageContext.request.contextPath}/project/quiz.do"
								method="post">
								<form:hidden path="id" />
								
								<div class="form-group">
									<label class="control-label col-sm-4" for="topic">Topic:</label>
									<div class="col-sm-4">
										<form:select required="true"  path="topic" class="form-control" id="topic">
											<form:option value="" label="select" />
											<form:option value="education" label="Education" />
											<form:option value="events" label="Events" />
											<form:option value="political" label="Political" />
										</form:select>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-sm-4" for="subTopic">Subtopic:</label>
									<div class="col-sm-4">
										<form:select required="true"  path="subTopic" class="form-control"
											id="subTopic">
											<form:option value="" label="select" />
											<form:option value="community" label="Community" />
											<form:option value="healthcare" label="Healthcare" />
											<form:option value="just for fun" label="Just for fun" />
										</form:select>
									</div>
								</div>
									<div class="form-group">
									<label class="control-label col-sm-4" for="topic">Item Category:</label>
									<div class="col-sm-4">
										<form:select required="true" path="itemCategory" class="form-control" id="topic">
											<form:option value="" label="select" />
											<form:option value="real" label="real" />
											<form:option value="tutorial" label="tutorial" />
											<form:option value="SD Item" label="sditem" />
											<form:option value="PreTest Item" label="pretest" />
										</form:select>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-sm-4" for="item">ItemID:</label>
									<div class="col-sm-4">
										<form:input type="item" class="form-control" id="item"
											placeholder="Enter item" path="itemId" maxlength="20" required="true" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-4" for="item">Exposure Time:</label>
									<div class="col-sm-4">
										<form:input type="item" class="form-control" id="item"
											placeholder="Enter time (int)" path="exposureTime" maxlength="20" required="true" />
									</div>
								</div>
									<div class="form-group">
									<label class="control-label col-sm-4" for="item">Negative Item:</label>
									<div class="col-sm-4">
											<input required type="radio" value="yes" name="negativeItem">Yes</input>
                							<input required type="radio" value="no" name="negativeItem"/>No</input>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="item">Anchor Item:</label>
									<div class="col-sm-4">
											<input required type="radio" value="yes" name="anchorItem">Yes</input>
                							<input required type="radio" value="no" name="anchorItem"/>No</input>
									</div>
								</div>
                	
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-4">
									<br>
										<button type="Save" class="btn btn-success">Next</button>
									<br>
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