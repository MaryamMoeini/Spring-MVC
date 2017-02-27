<%@include file="../header.jsp"%>
<%@include file="../navbar.jsp"%>


<link rel="stylesheet" type="text/css" href="../bootstrap/bootstrap-wysihtml5-master/lib/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="../bootstrap/bootstrap-wysihtml5-master/lib/css/prettify.css"/>
<link rel="stylesheet" type="text/css" href="../bootstrap/bootstrap-wysihtml5-master/src/bootstrap-wysihtml5.css"/>
<style type="text/css" media="screen">
.btn.jumbo {
		font-size: 20px;
		font-weight: normal;
		padding: 14px 24px;
		margin-right: 10px;
		-webkit-border-radius: 6px;
		-moz-border-radius: 6px;
		border-radius: 6px;
	}
.addQuestion{
	margin-left: 20px;
	}
table.MCQOption td{
	margin: 5px 5px 5px 5px;
    padding: 5px 5px 5px 5px;
}
	
</style>

<body>
	<section style="background: #efefe9;">
		<div class="container">
			<div class="row">
				<div class="board">
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
							<div class="addQuestion">
							<h1>Innovation</h1>
							  <form modelAttribute="mcqItem"
								action="${pageContext.request.contextPath}/questionType/MCQ.do"
								method="post">
								Question:
								<br>
							 	<textarea id="questionText" class="textarea" placeholder="Enter your Question here..." style="width:525px; height: 100px;"></textarea>
								 <br>
								 
								 Flash Upload:
								 <div style="position:relative;">
       							 <a class='btn btn-primary' href='javascript:;'>
            						Upload <input type="file" id="img1" style='position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";opacity:0;background-color:transparent;color:transparent;' name="file_source1" size="40"  onchange='$("#upload-file-info").html($(this).val());'>
       							 </a>
       							 &nbsp;
        						<span class='label label-info' id="upload-file-info"></span>
								</div>
								<br>
								<br>
							 	Option(s):
							 	
							 	<!-- Table Starts -->
							 	<table id="dataTable" class="MCQOption">
							 	<tr>
							 	<td><input type="checkbox" name="option1"/></td>
								<td>Option:</td>
								<td><input type="text" name="option1" id="option1"></td>
								<td><div style="position:relative;">
       							 <a class='btn btn-primary' href='javascript:;'>
            						Add Image...
           						 <input type="file" id="img1" style='position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";opacity:0;background-color:transparent;color:transparent;' name="file_source1" size="40"  onchange='$("#upload-file-info").html($(this).val());'>
       							 </a>
       							 &nbsp;
        						<span class='label label-info' id="upload-file-info"></span>
								</div></td>
								</tr>
								
								
								
								<tr>
								<td><input type="checkbox" name="option2"/></td>
								<td>Option:</td>
								<td><input type="text" name="option 2" id="option2"></td>
								
								<td><div style="position:relative;">
       							 <a class='btn btn-primary' href='javascript:;'>
            						Add Image...
           						 <input type="file" id="img2" style='position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";opacity:0;background-color:transparent;color:transparent;' name="file_source" size="40"  onchange='$("#upload-file-info").html($(this).val());'>
       							 </a>
       							 &nbsp;
        						<span class='label label-info' id="upload-file-info"></span>
								</div></td>
								</tr>
								<button onclick="showDiv();">Add Option</button>
								</table>
								<br>
								
								
								<INPUT type="button" value="Add Option" onclick="addRow('dataTable')" />
								
								
								(check the correct answer)
								<p class="text-center">
								<button class="btn btn-success btn-outline-rounded green" > Save</button>
								
							
							  </form>
							  <button class="btn btn-success btn-outline-rounded green" data-toggle="modal" data-target="#myModal" id="view"> View</button>
							  
							   
							   
							    <!-- Modal -->
							<div class="modal fade" id="myModal" role="dialog">
  								<div class="modal-dialog modal-sm">
  								   <!-- Modal content-->
      								<div class="modal-content">
        								<div class="modal-header">
        								  <button type="button" class="close" data-dismiss="modal">&times;</button>
          									<h4 id="modal-title"></h4>
        								     </div>
      										  <div id="modal-body" style="padding:10px;">
        									  
        									  
        									  
        									</div>
      									  <div class="modal-footer">
        								  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      								  	</div>
      							   </div>
    					    	</div>
  						     </div>
							
							  
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
		
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script  src="../js/prettify.js"></script>



	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-wysihtml5-master/lib/js/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-wysihtml5-master/lib/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-wysihtml5-master/lib/js/prettify.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-wysihtml5-master/src/bootstrap-wysihtml5.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-wysihtml5-master/lib/js/bootstrap.min.js"></script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-30181385-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<script>

        function addRow(tableID) {
        	
 			 var tableSize = $('#dataTable  tr').length;
 			 var k=tableSize+1;
            var table = document.getElementById(tableID);
 			
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
 			
            var cell1 = row.insertCell(0);
            var element1 = document.createElement("input");
            element1.type = "checkbox";
            element1.name="chkbox[]";
            cell1.appendChild(element1);
 
            var cell2 = row.insertCell(1);
            cell2.innerHTML = "option:";
 
            var cell3 = row.insertCell(2);
            var element2 = document.createElement("input");
            element2.type = "text";
            element2.name = "txtbox[]";
            element2.id= "option"+k;
            cell3.appendChild(element2);
            
            var cell4=row.insertCell(3);
            var element3 = document.createElement("input");
 			element3.type="file";
 			element3.name="file_source";
 			element3.id = "img"+k;
 			element3.style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)';opacity:0;background-color:transparent;color:transparent;";
 			element3.size="40";
 			element3.onchange="$('#upload-file-info').html($(this).val());";
 			cell4.appendChild(element3);
 			}
 			
 			
        
 
      
</script>
<script>
	$('.textarea').wysihtml5();
</script>

<script type="text/javascript" charset="utf-8">
	$(prettyPrint);
</script>
	</section>
	<%@include file="../footer.jsp"%>
	
	
<script type="text/javascript" src="../bootstrap/bootstrap-wysihtml5-master/lib/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-wysihtml5-master/src/bootstrap-wysihtml5.js"></script>


<script>
$("button#view").click(function() {
	
    var text = $('textarea#questionText').val();
   
  var tableSize = $('#dataTable  tr').length; 
 
  var table=document.getElementById( "dataTable" );
  
  var text= document.getElementById("questionText").value;
  document.getElementById("modal-title").innerHTML =(text);
  
  
  
  var option=[];
 
  for(var i=1; i<=tableSize;i++){
  	option[i]=(document.getElementById("option"+i).value);
  	
 	 }
 	 
	for(var j=1; j<option.length;j++){
		var popUpList = document.getElementById("modal-body");
		var radioButton = document.createElement("input");
		radioButton.type= "radio";
		popUpList.appendChild(radioButton);
		
		var span = document.createElement('span');
		span.style="margin-right:3px;";
		popUpList.appendChild(span);
		var t = document.createTextNode(option[j]);
		popUpList.appendChild(t);
		
		var br = document.createElement('br');
		popUpList.appendChild(br);
	}

     
});

</script>

</body>
</html>