<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Users</title>
    <style type="text/css">
        table.navigation td {
        }

        table.navigation div {
            height: 25px;
            min-width: 30px;
            border: 1px solid;
            width: 100%;
            line-height: 25px;
            text-align: center;
            vertical-align: middle;
        }

        table.user-list tr:first-child {
            font-weight: bold;
            background-color: #C6C9C4;
        }

        div.empty {
            border: none !important;
        }
    </style>
</head>

<body>
<h2>List of Users</h2>
<table class="user-list">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Created Date</td>
        <td>Age</td>
        <td>Admin</td>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.createdDate}</td>
            <td>${user.age}</td>
            <td>${user.isAdmin}</td>
            <td><a href="<c:url value='/edit?id=${user.id}' />">Edit</a></td>
            <td><a href="<c:url value='/delete?id=${user.id}' />">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<table class="navigation">
    <tr>
        <td>
            <c:choose>
                <c:when test="${firstLink != 0}">
                    <a href="list?nav=first">
                        <div>&lt;&lt;</div>
                    </a>
                </c:when>
                <c:otherwise>
                    <div class="empty"/>
                </c:otherwise>
            </c:choose>
        </td>

        <td>
            <c:choose>
                <c:when test="${currentPage != 0}">
                    <a href="list?nav=prev">
                        <div>&lt;</div>
                    </a>
                </c:when>
                <c:otherwise>
                    <div class="empty"/>
                </c:otherwise>
            </c:choose>
        </td>

        <c:forEach var="i" begin="${firstLink}" end="${firstLink + maxLinks - 1}">
            <td>
                <c:choose>
                    <c:when test="${i == currentPage}">
                        <div><b>${i}</b></div>
                    </c:when>
                    <c:when test="${i <= lastLink}">
                        <a href="list?page=${i}">
                            <div>${i}</div>
                        </a>
                    </c:when>
                    <c:otherwise>
                        <div class="empty"/>
                    </c:otherwise>
                </c:choose>
            </td>
        </c:forEach>

        <td>
            <c:choose>
                <c:when test="${currentPage != lastPage}">
                    <a href="list?nav=next">
                        <div>&gt;</div>
                    </a>
                </c:when>
                <c:otherwise>
                    <div class="empty"></div>
                </c:otherwise>
            </c:choose>
        </td>

        <td>
            <c:choose>
                <c:when test="${lastLink != lastPage}">
                    <a href="list?nav=last">
                        <div>&gt;&gt;</div>
                    </a>
                </c:when>
                <c:otherwise>
                    <div class="empty"></div>
                </c:otherwise>
            </c:choose>
        </td>
    </tr>
</table>
<br/>
<a href="<c:url value='/new' />">Add New User</a>
</body>
</html>