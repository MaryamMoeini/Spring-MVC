<%@include file="../header.jsp"%>
<body>
<%@include file="../navbar.jsp"%>
        <div class="container">
        	<br></br>     
        <h1>Question List</h1>
        <div id="Add">
            <a href="${pageContext.request.contextPath}/question/add">Add</a>
        </div>
        <table class="table table-hover" id="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>Question</th>
                    <th>Type</th>
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${questions}" var="question">
                <tr>
                    <td><c:out value="${question.id}" /></td>
                    <td><c:out value="${question.question}" /></td>
                    <td><c:out value="${question.type}" /></td>
                         <script>
$("#delete-button").click(function(){
    if(confirm("Are you sure you want to delete this?")){
        $("#delete-button").attr("href", "query.php?ACTION=delete&ID='1'");
    }
    else{
        return false;
    }
});
</script>
                    <td><a href="${pageContext.request.contextPath}/question/edit/${question.id}">Edit</a> | 
                     <a href="${pageContext.request.contextPath}/question/delete/${question.id}">Delete</a>
                
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table> 
        
        </div>
                <%@include file="../footer.jsp"%>
    </body>
</html>