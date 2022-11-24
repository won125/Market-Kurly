<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	
<!DOCTYPE html>
<html>
<head>
 <script src="${contextPath}/mkurly/js/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>1:1문의하기</title>


</head>
<body>
	<h1>${goodscode}</h1>
	 <h1 align="center">문의하기</h1>
	   
	   <form action="${contextPath}/good1/qnaModOk.do" method="post" name="writeForm">
	      <table border="1">
	         <tr>
	            <td align="right">상품이미지</td>
	            <td colspan="2"><img src="${contextPath}/mkurly/컬리이미지/${gimg.goodsimage}" ></td>
	         </tr>
	         	      
	         <tr>
	            <td align="right">제목: </td>
	            <td colspan="2"><input id="qnatitle" name="qnatitle" type="text" placeholder="제목 입력" value="${qnaInfo.qnatitle}"></td>
	         </tr>
	        
	         <tr>
	            <td align="right">내용: </td>
	            <td colspan="2"><textarea id="qnacontents" name="qnacontents" rows="10" cols="50" maxlength="4000" >${qnaInfo.qnacontents}</textarea></td> <!-- name이 변수역할해서 서버에 전달, 없으면 전달 못함 -->
	         </tr>

	         <tr>
	            <td align="center">
	            
	            	                
	              <input type="button" value="수정하기" onclick="send()"/>
	               <a href="${contextPath}/good1/goodsdetail.do?goodscode=${goodscode}">취소하기</a>
	            </td>
	          	<td align="center">
	               <input type="checkbox"> 비밀글로작성하기
	            </td>
	         </tr>
	      </table>  
	    			 <input type="hidden" name='qnanum' value='${qnaInfo.qnanum}'>
	      	         <input type="hidden" name='id' value='${qnaInfo.id}'>
			 		 <input type="hidden" name="goodscode" value="${qnaInfo.goodscode}">
			 		 <input type="hidden" name="name" value="${qnaInfo.name}">
	   </form>
</body>
<script>
	function send(){
		if(!$("input#qnatitle").val()){
			alert("제목을 작성해주세요.");
			return;
		}
		
		if(!$("textarea[name='qnacontents']").val()){
			alert("내용을 작성해주세요.");
			return;
		}
		alert("수정이 완료되었습니다.")
		document.writeForm.submit();
	}	
</script>

</html>

