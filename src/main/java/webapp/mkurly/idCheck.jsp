<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="member.*"%>
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
<style>
.inputhint{
    height: 40px;
    padding: 0px 11px 1px 15px;
    border-radius: 4px;
    border: 1px solid rgb(221, 221, 221);
    font-weight: 400;
    font-size: 16px;
    line-height: 1.5;
    color: rgb(51, 51, 51);
}
.insidedoublecheck{
    height: 40px;
    padding: 0px 10px;
    text-align: center;
    border-radius: 3px;
    color: rgb(95, 0, 128);
    background-color: rgb(255, 255, 255);
    border: 1px solid rgb(95, 0, 128);
}
.joinbutton {
    padding: 0px 10px;
    text-align: center;
    overflow: hidden;
    height: 40px;
    border-radius: 3px;
    color: rgb(255, 255, 255);
    background-color: rgb(95, 0, 128);
    border: 0px none;
}

</style>

</head>
<body>
<%	
		// result 값이 null 이거나 true/false
		Object result = request.getAttribute("idCheck");
		String id =(String)request.getAttribute("id");
	%>



<%if(result==null){ %>
	<form action="${contextPath}/member/idCheck.do" method="get">
		<input class="inputhint" type="text" name="id" placeholder="중복 체크할 ID를 입력하세요">
		<input class="insidedoublecheck" type="submit" value="중복 체크">
	</form>
<%}else{ %>
	<form action="${contextPath}/member/idCheck.do" method="get">
		<input class="inputhint" type="text" name="id" value="<%=id %>" placeholder="중복 체크할 ID를 입력하세요">
		<input class="insidedoublecheck" type="submit" value="중복 체크">
	</form>
	<%if((boolean)result){ %>
		<span style="color:red">해당 ID는 이미 사용 중합니다.</span>
	<%}else{ %>
		<span style="color:blue">해당 ID는 사용이 가능합니다.</span>
		<button class="joinbutton" onclick="userId();">사용하기</button>
		
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