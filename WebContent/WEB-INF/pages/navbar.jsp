<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!-- Navigation -->
  
<c:if test="${pageContext.request.userPrincipal.name != null}">
<%@include file="loggednavbar.jsp"%>

</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null}">
	<%@include file="navigation.jsp"%>
</c:if>
  