<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>	
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정창</title>
</head>	
<body>
	<form action="${contextPath}/mostqna/modMostQna.do?mostnum=${mosFindInfo.mostnum}" method="post">
		<h2 align="center">회원 가입창</h2>
			<tr>
				<td width="200">카테고리</td>
				<td width="400"><input type="text" name="category" value="${mosFindInfo.category}" ></td>
			</tr>
			<tr>
				<td width="200">제목</td>
				<td width="400"><input type="text" name="mosttitle" value="${mosFindInfo.mosttitle}"></td>
			</tr>
			<tr>
				<td width="200">내용</td>
				<td width="400"><textarea name="mostcontents" rows="10" cols="50" maxlength="4000">${mosFindInfo.mostcontents}</textarea></td>
			</tr>
			<tr>
				<td width="200">&nbsp;</td>
				<td width="400">
					<input type="submit" value="수정하기">
					<input type="reset" value="다시쓰기">
				</td>
			</tr>
	</form>
</body>
</html>