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
<link rel="stylesheet" href="${contextPath}/css/login.css">
<title>로그인</title>
<script type="text/javascript">
    // 유효성 검증 예정
    window.onload = function() {
        document.frmLogin.onsubmit = function() {
        	var id = document.frmLogin.id;
    		var pw = document.frmLogin.pw;
    		
            if(!id.value) {
                alert("아이디를 입력하세요")
                id.focus();
                return false;
            }
            if(!pw.value) {
                alert("비밀번호를 입력하세요")
                pw.focus();
                return false;
            }
        }
    }
    function toJoin(obj) { //회원가입 페이지로 이동
    	obj.action = "${contextPath}/member/join.do";
    	obj.submit();
    }
</script>
<c:choose>
	<c:when test='${msg=="addMember"}'>
		<script type="text/javascript">
			window.onload=function(){
				alert("회원가입을 완료했습니다.");
			}
		</script>
	</c:when>
</c:choose>
</head>
<body>
	<c:if test="${ loginResult == -1 || loginResult == 0 }">
		<script>
			alert("아이디 혹은 비밀번호가 틀렸습니다.");
		</script>
	</c:if>
	<!--회원가입 영역 시작-->
         <div class="allloginform">
            <div class="mainlogintext">로그인</div>
            <div class="realloginform">
               <form action="loginOK.do" name="frmLogin" method="post">
                    <div class="inputspace">
                        <div class="bigidinput">
                            <div class="smallactualinput">
                                <input data-testid="input-box" name="id" placeholder="아이디를 입력해주세요" type="text" class="inputhint" value="">
                            </div>
                        </div>
                        <div class="bigidinput">
                            <div class="smallactualinput">
                                <input data-testid="input-box" name="pw" placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off" class="inputhint" value="">
                            </div>
                        </div>
                    </div>
                    <div class="findinfospace">
		                <a class="find">아이디 찾기</a>
		                <span class="sideinfo"></span>
		                <a class="find">비밀번호 찾기</a>
		            </div>
                    <div class="loginspace">
                        <button class="loginbutton" type="submit" height="54" radius="3">
                            <span class="buttontext">로그인</span>
                        </button>
                        <button class="joinbutton" type="button" height="54" radius="3" onClick="toJoin(this.form)">
                            <span class="buttontext">회원가입</span>
                        </button>
                    </div>
               </form>
            </div>
         </div>
</body>
</html>