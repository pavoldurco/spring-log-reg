<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>JavaServlet</title>
</head>
<body>
stranka Spring
                                     <%--neviem preco zrovna /logout ani sa to neodvolava na SecurityConfig
                                     ako v pripade /authenticateUser v logine--%>
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout">
</form:form>

</body>
</html>
