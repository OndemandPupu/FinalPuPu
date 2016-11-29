<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${data.size()-1 ne -1 }">
[
<c:forEach var="i" begin="0" end="${data.size()-1 }">
<c:if test="${i ne 0 }">,</c:if>
{
"id":"${data[i].get("ID")}",
"memo":"${data[i].get("COMMENTS")}",
"dates":"${data[i].get("LOADDATE")}"
}
</c:forEach>
]	
</c:if>

<h2>${data.size() }</h2>