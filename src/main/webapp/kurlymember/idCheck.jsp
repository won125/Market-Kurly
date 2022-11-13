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
</head>
<body>
<%	
		// result 값이 null 이거나 true/false
		Object result = request.getAttribute("idCheck");
		String id =(String)request.getAttribute("id");
	%>



<%if(result==null){ %>
	<form action="${contextPath}/member/idCheck.do" method="get">
		<input type="text" name="id" placeholder="중복 체크할 ID를 입력하세요">
		<input type="submit" value="중복 체크">
	</form>
<%}else{ %>
	<form action="${contextPath}/member/idCheck.do" method="get">
		<input type="text" name="id" value="<%=id %>" placeholder="중복 체크할 ID를 입력하세요">
		<input type="submit" value="중복 체크">
	</form>
	<%if((boolean)result){ %>
		<span style="color:red">해당 ID는 이미 사용 중합니다.</span>
	<%}else{ %>
		<span style="color:blue">해당 ID는 사용이 가능합니다.</span>
		<button onclick="userId();">사용하기</button>
		
		<script>
		function userId(){
			window.opener.document.getElementById('id').value='<%=id%>';
			window.opener.document.getElementById('idCheckResult').value='true';
			window.close();
		}
	</script>
	<%} %>
<%} %>	
</body>
</html>