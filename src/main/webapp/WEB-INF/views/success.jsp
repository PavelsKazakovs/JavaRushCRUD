<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Registration Confirmation Page</title>
</head>

<body>
message : ${success}
<br/>
<br/>
Go back to <a href="<c:url value='${linkToList}' />">List of Users</a>
</body>
</html>