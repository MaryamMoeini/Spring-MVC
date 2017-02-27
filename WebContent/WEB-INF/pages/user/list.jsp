<%@include file="../header.jsp"%>
<body>
<%@include file="../navbar.jsp"%>
		<br></br>
        <div class="container">
        <h1>User List</h1>

        <div id="buttonTambah">
            <a href="${pageContext.request.contextPath}/user/add">Add</a>
        </div>
        
        <table class="table table-hover" id="table">
            <thead>
                <tr>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.username}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><a href="${pageContext.request.contextPath}/user/edit/${user.id}">Edit</a> | 
                     <a href="${pageContext.request.contextPath}/user/delete/${user.id}">Delete</a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table> 
        </div>
        
        <%@include file="../footer.jsp"%>
    </body>
</html>