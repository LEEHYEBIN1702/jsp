<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head><title>jstl.jsp</title>
</head>
<body>
<c:forTokens items="s,r,a" delims="," var="hobby"> <!-- c:forTokens은 문자를 자를 때 사용함 -->
    ${hobby} <br>
</c:forTokens> 
<%-- int sum=0; 
     for (int i=1; i<=10; i++) {
     sum+= i;
     }
     out.print(sum);
 --%>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="10" step="1" >
     <c:set var="sum" value="${sum+i}"/>
</c:forEach>
${sum}
</body>
</html>