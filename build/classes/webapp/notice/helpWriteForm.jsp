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
<title>질문 작성창</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
function readImage(input){
    if(input.files && input.files[0]){
  	  alert('이미지 안올림');
       let reader=new FileReader();
       reader.onload=function(event){
          $('#preview').attr('src',event.target.result);
       }
       reader.readAsDataURL(input.files[0]);
    }
 }
//다른 액션을 submit
function toList(obj){
   obj.action="${contextPath}/help/listHelp.do";
   obj.submit();
}
</script>
</head>
<body>
	 <h2 align="center">글쓰기</h2>
	   <form action="${contextPath}/help/addHelp.do" method="post" enctype="multipart/form-data">
	      <table align="center">
	      	 <tr>
	            <td align="right">제목: </td>
	            <td colspan="2"><input type="text" size="50" name="helptitle"></td>
	         </tr>
	         <tr>
	            <td align="center">이미지파일 첨부: </td>
	            <td><input type="file" name="imageFileName" onchange="readImage(this)"></td>
	            <td><img id="preview" src="#" width="200" height="200" alt="" ></td>
	         </tr>
	         <tr>
	            <td align="right">글내용: </td>
	            <td colspan="2"><textarea name="helpcontents" rows="10" cols="50" maxlength="4000"></textarea></td> <!-- name이 변수역할해서 서버에 전달, 없으면 전달 못함 -->
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