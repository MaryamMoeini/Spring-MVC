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
					
					<div class="tab-content">
						<div class="tab-pane fade in active" id="home">
							<table style="margin-left: 20px;">
					
							<c:forEach items="${questions}" var="mcqitem" varStatus="count">
								
								
								<!-- MC or Linked Section -->
								<c:if test="${mcqitem.QType == 'MC' || mcqitem.QType =='Linked'}">
								<tr>
									<td>${count.count}. ${mcqitem.question}</td>
								</tr>
								<br>
								
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option1}</td>
									
									
								</tr>
								
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option2}</td>
									
								</tr>
								
								<c:if test="${not empty mcqitem.option3}">
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option3}</td>
									
								</tr>
								</c:if>
								
								<c:if test="${not empty mcqitem.option4}">
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option4}</td>
									
								</tr>
								</c:if>
								
								<c:if test="${not empty mcqitem.option5}">
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option5}</td>
									
								</tr>
								</div>
						
								</c:if>
							</c:if>
							
							<!-- Essay Section -->
							<c:if test="${mcqitem.QType == 'Essay'}">
							
								<tr>
									<td>${count.count}. ${mcqitem.question}</td>
								</tr>
								<br>
							
								<tr>
								<td><textarea id="questionText" class="textarea" style="margin-left:10px; width:300px; height: 75px;"></textarea></td>
								</tr>
							</c:if>
							
							
							<!-- Media Section -->
							<c:if test="${mcqitem.QType == 'Media'}">
							<tr>
									<td>${count.count}. ${mcqitem.question}</td>
								</tr>
								<br>
								
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option1}</td>
								</tr>
								
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option2}</td>
									
								</tr>
								
								<c:if test="${not empty mcqitem.option3}">
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option3}</td>
									
								</tr>
								</c:if>
								
								<c:if test="${not empty mcqitem.option4}">
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option4}</td>
									
								</tr>
								</c:if>
								
								<c:if test="${not empty mcqitem.option5}">
								<tr>
									<td><input type="radio" style="margin-top: 10px; margin-left: 25px"/>${mcqitem.option5}</td>
									
								</tr>
								</div>
						
								</c:if>
							</c:if>
							
							
							</c:forEach>
							
							
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