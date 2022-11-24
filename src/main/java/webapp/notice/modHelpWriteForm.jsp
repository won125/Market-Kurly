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
<title>게시글 수정창</title>
</head>	
<body>
	<form action="${contextPath}/help/modHelp.do?helpnum=${helpInfo.helpnum}" method="post" enctype="multipart/form-data">
		<h2 align="center">회원 가입창</h2>
			 <tr>
	            <td align="right">제목: </td>
	            <td colspan="2"><input type="text" size="50" name="helptitle" value="${helpInfo.helptitle}"></td>
	         </tr>
	         <tr>
	            <td align="right">글내용: </td>
	            <td colspan="2"><textarea name="helpcontents" rows="10" cols="50" maxlength="4000">${helpInfo.helpcontents}</textarea></td> <!-- name이 변수역할해서 서버에 전달, 없으면 전달 못함 -->
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