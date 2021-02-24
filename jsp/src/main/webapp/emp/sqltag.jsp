<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>sql:query Tag</title>
</head>
<body>
<sql:setDataSource var="ds" dataSource="jdbc/myoracle"/> 
<sql:query dataSource="${ds }" var="result">
SELECT * from Employees;
</sql:query>
 
<table border="1" width="100%">
<tr>
<th>Emp ID</th>
<th>First Name</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.employee_id}"/></td>
<td><c:out value="${row.first_name}"/></td>

</tr>
</c:forEach>
</table>

</body>
</html>