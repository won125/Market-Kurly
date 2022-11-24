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
<title>후기작성</title>

</head>
<body>
    <h1 align="center">수정화면</h1>
      
      <form action="${contextPath}/good1/ModReviwOk.do?goodscode=${goodscode}" method="post" name="writeForm">



      <table border="1">
            

            <tr>
               <td align="right">내용: </td>
               <td colspan="2"><textarea id="reviewcontents" name="reviewcontents" rows="10" cols="50" maxlength="4000">${reviewinfo.reviewcontents}</textarea></td> <!-- name이 변수역할해서 서버에 전달, 없으면 전달 못함 -->
            </tr>

            <tr>
               <td align="center">     
                  <input type="button" value="수정하기" onclick="send()"/>
                  <a href="${contextPath}/good1/goodsdetail.do?goodscode=${goodscode}">취소하기</a>
               </td>
            </tr>
         </table>  
                 <input type="hidden" name='reviewnum' name='reviewnum' value='${reviewnum}'>
                  <input type="hidden" name='id' value='${reviewinfo.id}'>
                 <input type="hidden" name="goodscode" value="${goodscode}">
                 <input type="hidden" name="name" value="형석이짱짱">
      </form>
</body>
<script>
    function send(){

      if(!$("textarea[name='reviewcontents']").val()){
         alert("내용을 작성해주세요.");
         return;
      }
      alert("수정이 완료되었습니다.")
      document.writeForm.submit();
   }
   

</script>

</html>
