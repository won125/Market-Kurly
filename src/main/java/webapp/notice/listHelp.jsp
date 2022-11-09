<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<c:set var="helpList" value="${helpMap.helpList}"/>
	<c:set var="totHelp" value="${helpMap.totHelp}"/>
	<c:set var="section" value="${helpMap.section}"/>
	<c:set var="pageNum" value="${helpMap.pageNum}"/>
	<%
		request.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
			<th>공지글번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty helpList}">
				<tr>
					<td colspan="7" align="center">등록된 글이 없습니다.</td>
				</tr>
			</c:when>
			<c:when test="${!empty helpList}">
				<c:forEach var="hel" items="${helpList}" varStatus="start">
					<tr align="center">
						<td>${start.count},${hel.helpnum}</td>
						<td><a href="${contextPath}/help/viewHelp.do?helpnum=${hel.helpnum}">${hel.helptitle}</a></td>
						<td>${hel.helpcontents}</td>
						<td>${hel.admin}</td>
						<td>${hel.helpwritedate}</td>
						<td><a href="${contextPath}/help/modHelpWirteForm.do?helpnum=${hel.helpnum}">수정</a></td>
						<td><a href="${contextPath}/help/removeHelp.do?helpnum=${hel.helpnum}">삭제</a></td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<p align="center"><a href="${contextPath}/help/helpWriteForm.do">글 작성하러 가기</a></p>
</body>
</html>