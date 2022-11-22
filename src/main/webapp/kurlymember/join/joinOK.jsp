<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> <%-- 상대경로 현제 문서 위치를 기준으로 경로를 인식하는 방법--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
	<c:choose>
		<c:when test="${msg == 'addMember'}">
			<script>
				alert('회원 가입을 축하합니다. Congratulation!');
				location.href="${contextPath}/member/index.do";
			</script>
		</c:when>
		<c:otherwise>
			<script>
				alert('회원가입에 실패하였습니다.\n지속적인 문제 발생시 \n관리자에게 문의해주세요');
				location.href="${contextPath}/member/index.do";
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>