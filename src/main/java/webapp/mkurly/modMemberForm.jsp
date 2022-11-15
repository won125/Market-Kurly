<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> <%-- 상대경로 현제 문서 위치를 기준으로 경로를 인식하는 방법--%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/css/normalize.css">
<link rel="stylesheet" href="${contextPath}/css/join.css">
<script type="text/javascript" src="${contextPath}/js/confirm.js"></script>
<title>회원가입</title>
<script type="text/javascript">
function toMain(obj) { //게시글 목록으로 돌가가는 함수
	obj.action = "${contextPath}/member/";
	obj.submit();
}
window.onload = function() {
    document.frmJoinForm.onsubmit = function() {
		let pw = document.frmJoinForm.pw;
		let pwCheck = document.frmJoinForm.pwCheck;
		
		if(pw.value.length < 7){
			alert("비밀번호는 7글자 이상으로 만들어주세요.");
			pw.focus();
			return false;
		}
		
		if(pwCheck.value ==""){
			alert("비밀번호 확인란에 입력해주세요.");
			pwCheck.focus();
			return false;
		}
		
		if(pw.value != pwCheck.value){
			alert("입력하신 비밀번호가 같지 않습니다.");
			pwCheck.focus();
			return false;
		}
}
</script>
</head>
<body>
	<form name="frmJoinForm" action="${contextPath}/member/addMember.do" method="post">
		<div>
			<label for="id">아이디</label>
			<input id="id" name="id" type="text">
		</div>
		<div>
			<label for="pw">비밀번호</label>
			<input id="pw" name="pw" type="password">
		</div>
		<div>
			<label for="pwCheck">비밀번호확인</label>
			<input id="pwCheck" name="pwCheck" type="password">
		</div>
		<div>
			<label for="name">이름</label>
			<input id="name" name="name" type="text">
		</div>
		<div>
			<label for="email">이메일</label>
			<input id="email" name="email" type="email">
		</div>
		<div class="wholecompartment">
                        <div class="firstcompartment">
                            <label class="requiredinput">주소
                                <span class="essential">*</span>
                            </label>
                        </div>
                        <div class="actualinput">
                            <button class="addresssearch" type="button" height="44" radius="4">
                                <span class="sentencedoublecheck">
                                    <img src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg" alt="" class="addresssearchimg">주소검색
                                </span>
                            </button>
                            <span class="addressinfo">배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
                        </div>
                        <div class="alldoublecheck"></div>
                    </div>
                    <div class="wholecompartment">
                        <div class="firstcompartment">
                            <label class="requiredinput">성별</label>
                        </div>
                        <div class="actualinput">
                            <div class="genderdivide">
                                <label class="dividespace" for="gender-man">
                                    <input  id="gender-man" name="gender" type="radio" class="divideinput" value="MALE">
                                    <span class="bigcircle">
                                        <div smallcircle></div>
                                    </span>
                                    <span aria-labelledby="gender-man" class="sentencedivide">남자</span>
                                </label>
                                <label class="dividespace" for="gender-woman">
                                    <input data-testid="radio-FEMALE" id="gender-woman" name="gender" type="radio" class="divideinput" value="FEMALE">
                                    <span class="bigcircle">
                                        <div class="smallcircle"></div>
                                    </span>
                                    <span aria-labelledby="gender-woman" class="sentencedivide">여자</span>
                                </label>
                                <label class="dividespace" for="gender-none">
                                    <input data-testid="radio-NONE" id="gender-none" name="gender" type="radio" class="divideinput" value="NONE" checked="">
                                    <span class="changebigcircle"> <!--클릭 시 버튼 모양 이렇게 바뀌게-->
                                        <div class="changesmallcircle"></div> <!--클릭 시 버튼 모양 이렇게 바뀌게-->
                                    </span>
                                    <span aria-labelledby="gender-none" class="sentencedivide">선택안함</span>
                                </label>
                            </div>
                        </div>
                        <div class="alldoublecheck"></div>
                    </div>
                    <div class="wholecompartment">
                        <div class="firstcompartment">
                            <label class="requiredinput">생년월일</label>
                        </div>
                        <div class="actualinput">
                            <div class="datedivide">
                                <div class="inputdate">
                                    <div height="40" class="insidedate">
                                        <input data-testid="input-box" name="birthYear" placeholder="YYYY" type="text" height="40" class="insertdate" value="">
                                    </div>
                                </div>
                                <span class="sidedate">
                                    /<!--::after-->
                                </span>
                                <div class="inputdate">
                                    <div height="40" class="insidedate">
                                        <input data-testid="input-box" name="birthMonth" placeholder="MM" type="text" height="40" class="insertdate" value="">
                                    </div>
                                </div>
                                <span class="sidedate">
                                    /<!--::after-->
                                </span>
                                <div class="inputdate">
                                    <div height="40" class="insidedate">
                                        <input data-testid="input-box" name="birthDay" placeholder="DD" type="text" height="40" class="insertdate" value="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="alldoublecheck"></div>
                    </div>
		<input type="submit" value="가입">
		<input type="button" value="취소" onclick="toMain(this.form)">
	</form>
</body>
</html>