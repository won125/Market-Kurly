<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="marketkurly.member.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> <%-- 상대경로 현제 문서 위치를 기준으로 경로를 인식하는 방법--%>
<%
	request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복체크</title>
<script type="text/javascript">
	alret("${msg}");
</script>
</head>
<body>
<h2>아이디중복체크</h2>
<!-- 4.팝업창구현  -->
<fieldset>
	<!-- <form action="" method="post">
	action속성에 값이 없으면 기본적으로 자기자신을 불러오지만 중복확인 버튼을 클릭했을때 변경되지않는다.-->	
	<form action="idCheck.do" method="post" name="wfr">
		ID : <input type="text" name="id" value="${id}">
		<input type="submit" value="중복 확인">
	</form>
</fieldset>
</body>
</html>