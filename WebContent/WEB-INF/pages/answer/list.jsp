<%@include file="../header.jsp"%>
<body>
<%@include file="../navbar.jsp"%>
        <div class="container">
        	<br></br>     
        <h1>Answer List</h1>
        <div id="Add">
            <a href="${pageContext.request.contextPath}/answer/add">Add</a>
        </div>
        <table class="table table-hover" id="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>Answer</th>
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${answers}" var="answer">
                <tr>
                    <td><c:out value="${answer.id}" /></td>
                    <td><c:out value="${answer.answerText}" /></td>
                    <td><a href="${pageContext.request.contextPath}/answer/edit/${answer.id}">Edit</a> | 
                     <a href="${pageContext.request.contextPath}/answer/delete/${answer.id}">Delete</a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table> 
        
        </div>
                <%@include file="../footer.jsp"%>
    </body>
</html>