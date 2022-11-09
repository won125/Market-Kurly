<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<%
		request.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
<style type="text/css">
	h2{
		text-align:center;
	}
</style>
</head>
<body>
	<h2>자주묻는질문</h2>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightgreen">
			<th>게시글번호</th>
			<th>카테고리</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<c:choose>
			<c:when test="${empty mostQnaList}">
				<tr>
					<td colspan="7" align="center">등록된 글이 없습니다.</td>
				</tr>
			</c:when>
			<c:when test="${!empty mostQnaList}">
				<c:forEach var="mqn" items="${mostQnaList}" varStatus="start">
					<tr align="center">
						<td>${start.count}</td>
						<td>${mqn.category}</td>
						<td>${mqn.mosttitle}</td>
						<td>${mqn.mostcontents}</td>
						<td><a href="${contextPath}/mostqna/modQnaWriteForm.do?mostnum=${mqn.mostnum}">수정</a></td>
						<td><a href="${contextPath}/mostqna/delMostQna.do?mostnum=${mqn.mostnum}">삭제</a></td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<p align="center"><a href="${contextPath}/mostqna/qnaWriteForm.do">글 작성하러 가기</a></p>
</body>
</html>