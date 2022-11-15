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
<title>회원가입창</title>
<script type="text/javascript">
//다른 액션을 submit
function toList(obj){
   obj.action="${contextPath}/mostqna/listMostQna.do";
   obj.submit();
}
</script>
</head>
<body>
	 <h2 align="center">글쓰기</h2>
	   <form action="${contextPath}/mostqna/addWrite.do" method="post">
	      <table align="center">
	      	 <tr>
	            <td align="right">카테고리: </td>
	            <td colspan="2"><input type="text" size="50" name="category"></td>
	         </tr>
	         <tr>
	            <td align="right">글제목: </td>
	            <td colspan="2"><input type="text" size="50" name="mosttitle"></td>
	         </tr>
	         <tr>
	            <td align="right">글내용: </td>
	            <td colspan="2"><textarea name="mostcontents" rows="10" cols="50" maxlength="4000"></textarea></td> <!-- name이 변수역할해서 서버에 전달, 없으면 전달 못함 -->
	         </tr>
	         <tr>
	            <td align="right">
	               <input type="submit" value="글쓰기">
	            </td>
	            <td align="lert">
	               <input type="button" value="목록보기" onclick="toList(this.form)">
	            </td>
	         </tr>
	      </table>   
	   </form>
</body>
</html>