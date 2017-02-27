<%@include file="../header.jsp"%>
<%@include file="../navbar.jsp"%>
<style>

</style>
<body>
	<div class="container">
		
			<div class="col-md-6  irs-body">
				<form:form class="form-horizontal" role="form"
					modelAttribute="question"
					action="${pageContext.request.contextPath}/question/add"
					method="post">
					<form:hidden path="id" />
					<div class="form-group">
						
					<div id="sample">
					<script type="text/javascript">
						function addSurveyRow(){
		var dynamicOptionRunningNumber = 0;
		$(".dynamicOption").each( function(){
			dynamicOptionRunningNumber++;
		});
		if( dynamicOptionRunningNumber > 0 ){
			dynamicOptionRunningNumber--;
		}
		
		
		var optionTitle = $("#loginDiv .questionTxt").eq(0).val();
		var rowDIV = $("<div class='optionAdd' class='dynamicOption'><label>"+optionTitle+"</label><br/></div>");
		var typeObject = null;
		if ( selectedType ==  'multiChoise'){
			typeObject = $("<select  multiple='multiple'>");
			$(".optionTxt").each( function(){
				if( $(this).val() != null && $.trim($(this).val()) != '' ){
					$("<option value='"+$(this).val()+"'>"+$(this).val()+"</option>").appendTo($(typeObject));
				}
			});
			$(rowDIV).append(typeObject);
		} else if(  selectedType == 'dropDown' ){
			typeObject =  $("<select>");
			$(".optionTxt").each( function(){
				if( $(this).val() != null && $.trim($(this).val()) != '' ){
					$("<option value='"+$(this).val()+"'>"+$(this).val()+"</option>").appendTo($(typeObject));
				}
			});
			$(rowDIV).append(typeObject);
		} else if ( selectedType == 'radio' ){
			$(".optionTxt").each( function(){
				if( $(this).val() != null && $.trim($(this).val()) != '' ){
					$(rowDIV).append($("<span style='padding-left:20px;'><input type='radio' /><label>"+$(this).val()+"</label></span>"));
				}
			});
		}else if(selectedType== 'description'){
			$(".questionTxt").each( function(){
				if( $(this).val() != null && $.trim($(this).val()) != '' ){
					$(rowDIV).append($("<textarea rows='10' cols='60'/>"))
					
				}
			
			});
		}else if(selectedType== 'description'){
			$(".questionTxt").each( function(){
				if( $(this).val() != null && $.trim($(this).val()) != '' ){
					$(rowDIV).append($("<textarea rows='10' cols='60'/>"))
					
				}
			});
		}
		
		$("#survey-data").append(rowDIV);
		$("#addSurveyForm").append("<input type='hidden' class='dynamicOption' name='surveyRow["+dynamicOptionRunningNumber+"].surveyOptionName' value='"+optionTitle+"' />");
		$("#addSurveyForm").append("<input type='hidden' class='dynamicOption' name='surveyRow["+dynamicOptionRunningNumber+"].surveyOptionType' value='"+typeObject+"' />");
		var innerCounter = 0;
		$(".optionTxt").each( function(){
			if( $(this).val() != null && $.trim($(this).val()) != '' ){
				$("#addSurveyForm").append("<input type='hidden' class='dynamicOption' name='surveyRow["+dynamicOptionRunningNumber+"].surveyOptions["+innerCounter+"].optionText' value='"+$(this).val()+"' />");
				innerCounter++;
			}
		});
		clearPopupvalues();
		ClosePopupDiv('loginDiv');
	}
		
	
	function clearPopupvalues(){
		$("#loginDiv .questionTxt").eq(0).val('');
		$(".optionTxt").each(function(){
			$(this).val('');
		});
	}
	

	
	
</script>
		<script type="text/javascript">
		var selectedType = null;
		
        function OpenLoginPopup(type) {
        	selectedType = type;
            var divToOpen = "loginDiv";
            var popupSetting = { width: '470', height: '280', title: 'Multiple Choice',isFixed:true };
            ShowPopup(divToOpen, popupSetting);
        }
        function OpenLoginPopup1(type) {
        	selectedType = type;
            var divToOpen = "loginDiv1";
            var popupSetting = { width: '470', height: '280', title: 'Description',isFixed:true };
            ShowPopup(divToOpen, popupSetting);
        }
        
        // Function to Show Div Popup
        function ShowPopup(divId, popupSetting) {
            var divElt = document.getElementById(divId);
            divElt.style.display = 'block';
            var element = divElt.parentElement;
            popupSetting = popupSetting || {};
            if (!popupSetting.width) { popupSetting.width = divElt.offsetWidth };
            if (!popupSetting.height) { popupSetting.height = divElt.offsetHeight };
            if (!popupSetting.title) { popupSetting.title = 'Dialog' };
            var table = document.createElement('table');
            table.setAttribute('id', 'table' + divId);table.setAttribute('cellspacing', '0');table.setAttribute('cellpadding', '0');
            var tr1 = document.createElement('tr'); tr1.className = 'PopupHeader';
            var td1 = document.createElement('td'); td1.setAttribute('style', 'width: 90%; padding: 5px;');
            var span = document.createElement('span'); span.innerHTML = popupSetting.title;
            span.setAttribute('style', 'font-size: 14px; font-weight: bold;');
            td1.appendChild(span); tr1.appendChild(td1); table.appendChild(tr1);
            var tr2 = document.createElement('tr');
            var tdDynamic = document.createElement('td');
            tdDynamic.setAttribute('align', 'center');
            tdDynamic.setAttribute('style', 'padding-top: 10px; vertical-align:top;');
            var tempElt = document.createElement('div');
            tempElt.setAttribute('id', 'tempElt' + divElt.id);
            divElt.parentElement.insertBefore(tempElt, divElt);
            tdDynamic.appendChild(divElt);
            tr2.appendChild(tdDynamic);
            table.appendChild(tr2);
            var cssText = 'display: block; border:1px solid black;  z-index:92000; background-color:white; top:50%; left:50%;';
            cssText += 'width: ' + popupSetting.width + 'px; height: ' + popupSetting.height + 'px; margin-left: -' + Math.round(popupSetting.width / 2) + 'px; margin-top: -' + Math.round(popupSetting.height / 2) + 'px;';
            if (popupSetting.isFixed === true) { cssText += 'position: fixed;';}
            else { cssText += 'position: absolute;'; }
            table.setAttribute('style', cssText);
            element.appendChild(table);
            var shadeElt = document.createElement('div');
            shadeElt.id = "ShadedBG";shadeElt.className = "ShadedBG";
            tempElt.appendChild(shadeElt);
        }
 
        // Function to Close Div Popup
        function ClosePopupDiv(divId) {
            var table = document.getElementById('table' + divId);
            var element = table.parentElement;
            var divElt = document.getElementById(divId);
            divElt.style.display = 'none';
            var tempElt = document.getElementById('tempElt' + divId);
            tempElt.parentElement.insertBefore(divElt, tempElt);
            table.parentElement.removeChild(table);
            table.setAttribute('style', 'display: none');
            tempElt.parentElement.removeChild(tempElt);
        }
        
    
        function myFunction() {
            var table = document.getElementById("myTable");
            var row = table.insertRow(0);
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            var element = document.getElementById("textbox")
            cell1.innerHTML = "Option";
            cell2.appendChild(element);
        }
        function displayResult()
        {
            document.getElementById("myTable").insertRow(-1).innerHTML = '<td>Option</td><td><input type="text"/></td>';
        }
    </script>			
  <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> <script type="text/javascript">
//<![CDATA[
        bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
  //]]>
  </script>
 
<table id="myTable">
	        <tr>
	        <td>Enter your Question: </td>
	        <td><textarea name="question" value="${question.question}" cols="40">
</textarea><br /></td>
	        </tr>
	        
	        <tr>
	        <td>Option</td>
	        <td id="texbox"><input type="text" class="optionTxt"/></td>
	        </tr>
	        
	        <tr>
	        <td>Option</td>
	        <td><input type="text" class="optionTxt"/></td>
	        </tr>
	        
	        <tr>
	        <td>Option</td>
	        <td><input type="text" class="optionTxt"/></td><td><input type="button" value="Add Option" onclick="displayResult()"></input></td>
	     
	       </table>
 
</div>
<c:forEach var="row" items="${survey.surveyRow}">
				
					<label class="text-pad">${row.surveyOptionName}</label>
				<br/>
				<c:if test="${row.surveyOptionType == 'multiChoise' }">
				<select multiple="multiple" style="width: 92px; ">
				<c:forEach var="option" items="${row.surveyOptions}">
				<option value='<c:out value="${option.optionText}" />'><c:out value="${option.optionText}" /></option>
				</c:forEach>
				</select>
				</c:if>
		
				<c:if test="${row.surveyOptionType == 'dropDown' }">
				<select style="width: 104px; height: 28px">
					<c:forEach var="option" items="${row.surveyOptions}">
					<option value='<c:out value="${option.optionText}" />'><c:out value="${option.optionTxt}" /></option>
					</c:forEach>
				</select>
				</c:if>
		
				<c:if test="${row.surveyOptionType == 'radio' }">
				<c:forEach var="option" items="${row.surveyOptions}">
				<input type="radio" /><label><c:out value="${option.optionText}" /></label>
				</c:forEach>
				</c:if>
				<br/>
				</c:forEach>
				
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<button type="submit" class="btn btn-success">Next</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<div class="hidden" id="hiddenDiv">
		Testing showing the hidden div
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>
