<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
        <%@include file="header.jsp" %>
        <p style="color: white;">Zdravo, admine!
        <h1> ${message}</h1>
        <c:url value="/j_spring_security_logout" var="logoutUrl"/>
        <form action="${logoutUrl}" method="post" id="logoutForm">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>
        <script>
            function formSubmit() {
                document.getElementById("logoutForm").submit();
            }
        </script>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>Username je :
                ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()"> Logout</a>
            </h2>
        </c:if>
    <%@include file="footer.jsp" %>