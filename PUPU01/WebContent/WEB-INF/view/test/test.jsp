<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="i" begin="0" end="5" varStatus="status">
${status.count }" 
</c:forEach>

<script>
	$("#test").click(function(){
		alert("!!");
	});
</script>