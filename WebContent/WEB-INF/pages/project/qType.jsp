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
						<div class="form-group">
							<form:form method="post" action="${pageContext.request.contextPath}/project/viewQuiz.do">
								<br>
										<button type="save" class="btn btn-success" style="margin-left: 10px;">View Quiz</button>
							
						</form:form>
						<div class="tab-pane fade in active" id="home">
					
							<form:form class="form-horizontal" role="form"
								modelAttribute="qtypeitem"
								action="${pageContext.request.contextPath}/project/qType.do"
								method="post">
								<div class="form-group">
									<label class="control-label col-sm-4" for="itemType">Question Type:
										type:</label>
									<div class="col-sm-4">
										<form:select required="true"  path="itemType" class="form-control"
											id="itemType" name="itemType">
											<form:option value="MC" label="MC" />
											<form:option value="Linked" label="Likert Scale" />
											<form:option value="Media" label="Media" />
											<form:option value="Essay" label="Essay" />
										</form:select>
									</div>
								</div>
								
								<div class="typeOfPoint" id="typeOfPoint" style=" display: none;">
									<label class="control-label col-sm-4" for="itemType">Type of
										Point:</label>
									<div class="col-sm-4">
										<select required="true"  path="pointType" class="form-control" id="pointType" name="pointType">
											<option value="3" label="3" />
											<option value="4" label="4" />
											<option value="5" label="5" />
										</select>
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
	
	
	<script type="text/javascript">
	var ItemType = jQuery('#itemType');
    var select = this.value;
    ItemType.change(function () {
    if ($(this).val() == 'Linked') {
        $('.typeOfPoint').show();
    }
    else $('.typeOfPoint').hide();
});
	</script>
</body>
</html>