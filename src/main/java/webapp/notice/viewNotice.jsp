<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<%
		request.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세 보기</title>
<style type="text/css">
	#tr_button_modify{
		display:none;
	}
</style>
<script src="http://code.jquery.com/jquery-Latest.min.js"></script>
<script type="text/javascript">
   function readImage(input){
      if(input.files && input.files[0]){
         let reader=new FileReader();
         reader.onload=function(event){
            $('#preview').attr('src',event.target.result);
         }
         reader.readAsDataURL(input.files[0]);
      }
   }
   function toList(obj){
	      obj.action="${contextPath}/help/listHelp.do";
	      obj.submit();
	}
   function fn_enable(obj){
	   document.getElementById("help_title").disabled=false;
	   document.getElementById("help_contents").disabled=false;
	   let imgName = document.getElementById("help_imageFileName");
	   if(imgName != null){
		   imgName.disabled=false;   
	   }//이미지가 있을때만 적용해주기위해서 if 문 사용
	   document.getElementById("tr_button_modify").style.display="block";
	   document.getElementById("tr_button").style.display="none";
   }
   function fn_modify_article(obj){
	   obj.action="${contextPath}/help/modHelp.do";
	   obj.submit();
   }
   function fn_remove_help(url, helpnum){
	   let form=document.createElement("form");
	   form.setAttribute("method","post");
	   form.setAttribute("action",url);
	   let articleNoInput = document.createElement("input");
	   articleNoInput.setAttribute("type","hidden");
	   articleNoInput.setAttribute("name","helpnum");
	   articleNoInput.setAttribute("value",helpnum);
	   form.appendChild(articleNoInput);
	   document.body.appendChild(form);
	   form.submit();
   }
  
</script>
</head>
<body>
	<form  name="frmHelp" action="${contextPath}" method="post" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td width="150" align="center" bgcolor="ff9933">글번호</td>
				<input type="hidden" value="${help.helpnum}" name="helpnum">
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="ff9933">작성자아이디</td>
				<td><input type="text" value="${help.admin}" name="admin" disabled></td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="ff9933">제목</td>
				<td><input type="text" value="${help.helptitle}" name="helptitle" id="help_title" disabled></td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="ff9933">내용</td>
				<td>
					<textarea row="20" cols="60" name="helpcontents" id="help_contents" disabled>${help.helpcontents}</textarea>
				</td>
			</tr>
			<c:if test="${not empty help.imageFileName && help.imageFileName !='null'}">
				<tr>
					<td width="150" rowspan="2" align="center" bgcolor="ff9933">이미지</td>
					<input type="hidden" name="originalFileName" value="${help.imageFileName}">
					<td>
						<img src="${contextPath}/download.do?helpnum=${help.helpnum}
						&imageFileName=${help.imageFileName}" id="preview"><br>
					</td>
				</tr>
				<tr>
					<td><input type="file" name="imageFileName" id="help_imageFileName" onchange="readImage(this)" disabled></td>
				</tr>
			</c:if>
			<tr>
				<td width="150" align="center" bgcolor="ff9933">등록일자</td>
				<td><input type="text" value="${help.helpwritedate}" disabled></td>
			</tr>
			<tr id="tr_button_modify">
				<td colspan="2" align="center">
					<input type="button" value="수정반영하기" onclick="fn_modify_article(frmHelp)">
					<input type="button" value="취소하기" onclick="toList(frmHelp)">
				</td>
			</tr>
			<tr id="tr_button">
				<td colspan="2" align="center">
					<input type="button" value="수정하기" onclick="fn_enable(this.form)">
					<input type="button" value="삭제하기" onclick="fn_remove_help('${contextPath}/help/removeHelp.do',${help.helpnum})">
					<input type="button" value="리스트로 돌아가기" onclick="toList(this.form)">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>