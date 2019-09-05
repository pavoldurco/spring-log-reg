<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My Login</title>

    <style>
        .fail{
            color: crimson;
        }

        .logout{
            color: green;
        }
    </style>

</head>
<body>
<h3>Login</h3>
<form:form action="${pageContext.request.contextPath}/authenticateUser" method="post">

<%--  kontrola prihlasovacich udajov  --%>
<%--ako vedel co znamena error???--%>
    <c:if test="${param.error!=null}">
        <p class="fail">
            You have't correct Username name or Password
        </p>
    </c:if>

<%-- oznamenie o odhlaseni  --%>
<%--    ako vedel co je to logout???--%>
    <c:if test="${param.logout!=null}">
        <p class="logout">
            You have been logout
        </p>
    </c:if>


    <p>                     <%--name = "username" musi byt
                            rovnake slovo ako v triede SecurityConfig -> .withUser(users.username...--%>
        User name: <input type="text" name="username">
    </p>
    <p>
        Password: <input type="password" name="password">
    </p>
    <input type="submit" value="Login">
    </form:form>
</body>
</html>
