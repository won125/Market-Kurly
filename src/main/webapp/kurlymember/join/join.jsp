<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> <%-- 상대경로 현제 문서 위치를 기준으로 경로를 인식하는 방법--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="${contextPath}/css/normalize.css">
<link rel="stylesheet" href="${contextPath}/css/commen.css">
<link rel="stylesheet" href="${contextPath}/css/join.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<script type="text/javascript" src="${contextPath}/js/confirm.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery-ui.min.js"></script>

<script type="text/javascript">
function toMain(obj) { //게시글 목록으로 돌가가는 함수
	obj.action = "${contextPath}/member/";
	obj.submit();
}
</script>
</head>
<body>
<script>
function idCheck(){
	let id = document.frmJoinForm.id.value;
	window.open("${contextPath}/member/idCheck.do?id="+id,"_blank","width=400px height=150px");
}
</script>

	<header>
        <div class="top-ad">
            <p>지금 가입하고 인기상품 <strong>100원</strong>에 받아가세요!</p>
        </div>
        <!--  -->
        <div class="top-menu">
            <div class="top-menu-form">
                <div class="top-main">
                <c:choose>
                	<c:when test="${sessionID == null }">
                		<div class="top-memberService">
	                        <a href="${contextPath}/member/join.do">회원가입</a>
	                        <div> | </div>
	                        <a href="${contextPath}/member/login.do">로그인</a>
	                        <div> | </div>
	                        <a href="${contextPath}/service/servicecenter.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
	                    </div>
                	</c:when>
                	<c:when test="${sessionID != null }">
                		<div class="top-memberService2">
	                        <a href="${contextPath}/member/mypage.do" id="userNameHover">
	                            <span class="login-user-tier">일반</span>${sessionID} 님
	                            <i class="fa-solid fa-caret-down"></i>
	                        </a>
	                        <div class="login-user-menu">
	                            <div class="login-user-low-menu"><a href="#">주문 내역</a></div>
	                            <div class="login-user-low-menu"><a href="#">선물 내역</a></div>
	                            <div class="login-user-low-menu"><a href="#">찜한 상품</a></div>
	                            <div class="login-user-low-menu"><a href="#">배송지 관리</a></div>
	                            <div class="login-user-low-menu"><a href="#">상품 후기</a></div>
	                            <div class="login-user-low-menu"><a href="#">상품 문의</a></div>
	                            <div class="login-user-low-menu"><a href="#">적립금</a></div>
	                            <div class="login-user-low-menu"><a href="#">쿠폰</a></div>
	                            <div class="login-user-low-menu"><a href="${contextPath}/member/modMember.do?id=${sessionID}">개인 정보 수정</a></div>
	                            <div class="login-user-low-menu"><a href="#">나의 컬리 스타일</a></div>
	                            <div class="login-user-low-menu"><a href="${contextPath}/member/logout.do">로그아웃</a></div>
	                        </div>
	                        <div> | </div>
	                        <a href="${contextPath}/service/serviceCenter.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
	                    </div>
                	</c:when>
                	<c:when test="${sessionID == 'admin'}">
                		<div class="top-memberService2">
	                        <a href="${contextPath}/member/mypage.do" id="userNameHover">
	                            <span class="login-user-tier">관리자</span>${sessionID} 님
	                            <i class="fa-solid fa-caret-down"></i>
	                        </a>
	                        <div class="login-user-menu">
	                            <div class="login-user-low-menu"><a href="#">공지 관리</a></div>
	                            <div class="login-user-low-menu"><a href="#">회원 관리</a></div>
	                            <div class="login-user-low-menu"><a href="${contextPath}/member/logout.do">로그아웃</a></div>
	                        </div>
	                        <div> | </div>
	                        <a href="${contextPath}/service/serviceCenter.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
	                    </div>
                	</c:when>
                </c:choose>
                    

                    <div class="top-serviceCenter-child">
                        <li>공지사항</li>
                        <li>자주하는 질문</li>
                        <li>1:1 문의</li>
                        <li>대량주문 문의</li>
                    </div>

                    <div class="top-logo-search-icon-frame">
                        <div class="top-logo-search-icon">
                            <a href="${contextPath}/"><img src="${contextPath}/컬리이미지/kulry-logo/asd-removebg-preview-removebg-preview.png" alt="메인로고" class="main-logo"></a>
                            <a href="${contextPath}/"><button class="first-market-button">마켓컬리</button></a>
                            <a href="${contextPath}/"><button class="second-market-button">뷰티컬리</button></a>
                            <div class="top-search-frame">
                                <input class="top-search" type="text" placeholder="검색어를 입력해주세요"></input>
                                <div class="search-icon">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </div>
                            </div>
                            
                            <div class="icon-menu">
                                <i class="fa-solid fa-location-dot"></i>
                                <a href="#"><i class="fa-regular fa-heart"></i></a>
                                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                            </div>
                        </div>                        
                    </div>
                    
                </div>
                              <!-- top 고정중 -->
                <div class="top-all-menu-frame">
                    <div class="top-all-menu">
                        <div class="category">
                            <i class="fa-solid fa-bars"></i>카테고리
                        </div>                        
                        <ul class="menu-list">
                            <li><a href="${contextPath}/good1/goodslist.do">신상품</a></li>
                            <li>베스트</li>
                            <li>알뜰쇼핑</li>
                            <li>특가/혜택</li>                        
                        </ul>
                        <div class="shipping">
                            <a href="#"><strong>샛별ㆍ낮</strong> 배송안내</a>                            
                        </div>                    
                    </div>
                    <div class="category-low-menu-frame">
                        <div class="category-low-menu">
                            <a href="#"><li><img src="${contextPath}/컬리이미지/채소/D2tq9D88GPQCRZd2FC04ct0BI0xId0Z1wTFWb7Wu.webp" alt="채소">채소</li></a>
                            <a href="#"><li><img src="${contextPath}/컬리이미지/정육/EOMHR0scDTojmp9yxY6ZK6U01fkqUEg19nPMyQFG.webp" alt="정육">정육</li></a>
                            <a href="#"><li><img src="${contextPath}/컬리이미지/반찬/TmOAqHrU3DaZ9GtkfircoZQmd0xGaplSNoXw2q8V.webp" alt="반찬">반찬</li></a>
                            <a href="#"><li><img src="${contextPath}/컬리이미지/유제품/PsTvzGzTKzgmANHetZ1XDCBoIvHj874L9goGSKXx.webp" alt="유제품품">유제품</li></a>
                            <a href="#"><li><img src="${contextPath}/컬리이미지/주류/xtK9aF5n9OfmNfWuLMmyHzxUaj7Y9pVx2MPetIex.webp" alt="주류">주류</li></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
	<form name="frmJoinForm" class="userjoin" action="${contextPath}/member/addMember.do" method="post">
		<div class="allmemberjoinform">
		    <div class="memberjoin">회원가입</div>
		    <div class="middlememberjoinform">
		        <div class="requiredfield">
		            <span class="essential">*</span>필수입력사항
		        </div>
		        <div class="whitespace">
			        <div class="wholecompartment">
			                <div class="firstcompartment">
			                    <label class="requiredinput">아이디
			                        <span class="essential">*</span>
			                    </label>
			                </div>
			                <div class="actualinput">
			                    <div class="middleactualinput">
			                        <div class="smallactualinput">
			                            <input data-testid="input-box" id="id" name="id" placeholder="아이디를 입력해주세요" type="text" class="inputhint" >
			                        </div>
			                    </div>
			                </div>
			                <div class="alldoublecheck">
			                    <button class="insidedoublecheck" type="button" onclick="idCheck()">
			                        <span class="sentencedoublecheck">중복확인</span>
			                    </button>
			                </div>
			                <input type="hidden" id="idCheckResult" value="false">
			            </div>
	            	<div class="wholecompartment">
	                	<div class="firstcompartment">
	                    	<label class="requiredinput">비밀번호
	                        	<span class="essential">*</span>
	                    	</label>
	                	</div>
	                	<div class="actualinput">
		                    <div class="middleactualinput">
		                        <div class="smallactualinput">
		                            <input data-testid="input-box" id="pw" name="pw" placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off" class="inputhint">
		                        </div>
		                    </div>
		                    <span id="pw_check" class="addressinfo"></span>
		                </div>
	                	<div class="alldoublecheck"></div>
	            	</div>
		            <div class="wholecompartment">
		                <div class="firstcompartment">
		                    <label class="requiredinput">비밀번호확인
		                        <span class="essential">*</span>
		                    </label>
		                </div>
		                <div class="actualinput">
		                    <div class="middleactualinput">
		                        <div class="smallactualinput">
		                            <input data-testid="input-box" id="passwordConfirm" name="pwConfirm" placeholder="비밀번호를 한번 더 입력해주세요" type="password" autocomplete="off" class="inputhint">
		                        </div>
		                    </div>
		                    <span id="passwordConfirm_check" class="addressinfo"></span>
		                </div>
		                <div class="alldoublecheck"></div>
		            </div>
		            <div class="wholecompartment">
		                <div class="firstcompartment">
		                    <label class="requiredinput">이름
		                        <span class="essential">*</span>
		                    </label>
		                </div>
		                <div class="actualinput">
		                    <div class="middleactualinput">
		                        <div class="smallactualinput">
		                            <input data-testid="input-box" id="kname" name="name" placeholder="이름을 입력해 주세요" type="text" class="inputhint" >
		                        </div>
		                    </div>
		                </div>
		                <div class="alldoublecheck"></div>
		            </div>
		            <div class="wholecompartment">
		                <div class="firstcompartment">
		                    <label class="requiredinput">이메일
		                        <span class="essential">*</span>
		                    </label>
		                </div>
		                <div class="actualinput">
		                    <div class="middleactualinput">
		                        <div class="smallactualinput">
		                            <input data-testid="input-box" id="email" name="email" placeholder="예: marketkurly@kurly.com" type="email" class="inputhint">  
		                        </div>
		                    </div>
		                </div>
		                <div class="alldoublecheck">
		                    <!--<button class="insidedoublecheck" type="button">
		                        <span class="sentencedoublecheck">중복확인</span>
		                    </button>-->
		                </div>
		            </div>
		            <div class="wholecompartment">
		                <div class="firstcompartment">
		                    <label class="requiredinput">휴대폰
		                        <span class="essential">*</span>
		                    </label>
		                </div>
		                <div class="actualinput">
		                    <div class="middleactualinput">
		                        <div class="smallactualinput">
		                            <input data-testid="input-box" id="mobileNumber" name="phone" placeholder="숫자만 입력해주세요." type="text" class="inputhint">
		                        </div>
		                    </div>
		                </div>
		                <div class="alldoublecheck">
		                    <!--<button class="insidedoublecheck" type="button" disabled>
		                        <span class="sentencedoublecheck">인증번호 받기</span>
		                    </button>-->
		                </div>
		            </div>
		            <div class="wholecompartment">
		                <div class="firstcompartment">
		                    <label class="requiredinput">주소
		                        <span class="essential">*</span>
		                    </label>
		                </div>
		                <div class="actualinput" id="addressarea_before">
		                    <button class="addresssearch" type="button" height="44" radius="4" onclick="execDaumPostcode()">
		                        <span class="sentencedoublecheck">
		                            <img src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg" alt="" class="addresssearchimg">주소검색
		                        </span>
		                    </button>
		                    <span class="addressinfo">배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
		                </div>
		                <div class="actualinput" id="addressarea_after" style="display:none">
							<div class="middleactualinput">
		                        <div class="smallactualinput">
		                        	<input type="hidden" id="postcode" class="inputhint" placeholder="우편번호">								
									<input type="text" id="roadAddress" name="address" class="inputhint" placeholder="도로명주소" readonly>
								</div>
								<div class="smallactualinput">
									<span id="guide" style="color:#999;display:none"></span>
									<input type="text" id="detailAddress" name="detailAddress" class="inputhint" placeholder="상세주소">
									<input type="hidden" id="jibunAddress" class="inputhint" placeholder="지번주소">
									<input type="hidden" id="extraAddress" class="inputhint" placeholder="참고항목">
								</div>
							</div>
						</div>
		                <div class="alldoublecheck">
		                	<div id="addressbtnarea_after" style="display:none">
		                		<button class="addresssearch" type="button" height="44" radius="4" onclick="execDaumPostcode()">
			                        <span class="sentencedoublecheck">
			                            <img src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg" alt="" class="addresssearchimg">재검색
			                        </span>
			                    </button>
		                	</div>
		                </div>
		            </div>
		            <div class="wholecompartment">
		                <div class="firstcompartment">
		                    <label class="requiredinput">성별</label>
		                </div>
		                <div class="actualinput">
		                    <div class="genderdivide">
		                        <label class="dividespace" for="gender-man">
		                            <input  id="gender-man" name="gender" type="radio" class="divideinput" value="MALE">
		                            <div>
		                            <span class="circle">
		                                <div class="smallcircle"></div>
		                            </span>
		                            <span aria-labelledby="gender-man" class="sentencedivide">남자</span>
		                            </div>
		                        </label>
		                        <label class="dividespace" for="gender-woman">
		                            <input data-testid="radio-FEMALE" id="gender-woman" name="gender" type="radio" class="divideinput" value="FEMALE">
		                            <span class="circle">
		                                <div class="smallcircle"></div>
		                            </span>
		                            <span aria-labelledby="gender-woman" class="sentencedivide">여자</span>
		                        </label>
		                        <label class="dividespace" for="gender-none">
		                            <input data-testid="radio-NONE" id="gender-none" name="gender" type="radio" class="divideinput" value="NONE" checked>
		                            <span class="circle"> 
		                                <div class="smallcircle"></div>
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
		                                <input data-testid="input-box" name="birthYear" placeholder="YYYY" type="text" height="40" class="insertdate">
		                            </div>
		                        </div>
		                        <span class="sidedate"></span>
		                        <div class="inputdate">
		                            <div height="40" class="insidedate">
		                                <input data-testid="input-box" name="birthMonth" placeholder="MM" type="text" height="40" class="insertdate">
		                            </div>
		                        </div>
		                        <span class="sidedate"></span>
		                        <div class="inputdate">
		                            <div height="40" class="insidedate">
		                                <input data-testid="input-box" name="birthDay" placeholder="DD" type="text" height="40" class="insertdate">
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div class="alldoublecheck"></div>
		            </div>
					<div class="wholecompartment">
	                    <div class="firstcompartment">
	                        <label class="requiredinput">추가입력 사항</label>
	                    </div>
	                    <div class="actualinput">
	                        <div class="genderdivide">
	                            <label class="seconddividespace" for="additional-recommender">
	                                <input data-testid="radio-RECOMMEND" id="additional-recommender" name="joinExtraInputType" type="radio" class="divideinput" value="RECOMMEND">
	                                <span class="bigcircle1">
	                                    <div class="secondsmallcircle"></div>
	                                </span>
	                                <span aria-labelledby="additional-recommender" class="sentencedivide">친구초대 추천인 아이디</span>
	                            </label>
	                            <label class="seconddividespace" for="additional-event">
	                                <input data-testid="radio-EVENT" id="additional-event" name="joinExtraInputType" type="radio" class="divideinput" value="EVENT" >
	                                <span class="bigcircle2">
	                                    <div class="secondsmallcircle"></div>
	                                </span>
	                                <span aria-labelledby="additional-event" class="sentencedivide">참여 이벤트명</span>
	                            </label>
	                        </div>   
	                        <div class="hiddeninput1" id="js_pay_type1">
	                            <div class="middleactualinput">
	                                <div class="smallactualinput">
	                                    <input data-testid="input-box" name="joinExtraInput" placeholder="추천인 아이디를 입력해 주세요." type="text" class="inputhint" value="">
	                                </div>
	                            </div>
	                            <span class="eventtext">
	                                <div>가입 후 7일 내 첫 주문 배송완료 시, 친구초대 이벤트 적립금이 지급됩니다.</div>
	                            </span>
	                        </div>
	                        <div class="hiddeninput2" id="js_pay_type2">
	                            <div class="middleactualinput">
	                                <div class="smallactualinput">
	                                    <input data-testid="input-box" name="joinExtraInput" placeholder="참여 이벤트명을 입력해 주세요." type="text" class="inputhint" value="">
	                                </div>
	                            </div>
	                            <span class="eventtext">
	                                <div>추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.
	                                    <br>
	                                    가입 이후는 수정이 불가능 합니다.
	                                    <br>
	                                    대소문자 및 띄어쓰기에 유의해주세요.
	                                </div>
	                            </span>
	                        </div>
	                    </div>
	                    <div class="alldoublecheck"></div>
	                </div>
	            </div>
	        	<div class="division"></div>
				<div class="whitespace">
		                <div class="lowerspace">
		                    <div class="firstcompartment">
		                        <label class="requiredinput">이용약관동의
		                            <span class="essential">*</span>
		                        </label>
		                    </div>
		                    <div class="actualinput">
		                        <div class="paragraph">
		                            <label class="allagreeparagraph check" for="TermsAgreeAll">
		                                <input id="TermsAgreeAll" type="checkbox" class="oneagreeparagraph agreement" name="agreement">
		                                <span class="ico"></span>
		                                <span class="txt">전체 동의합니다.</span>
		                            </label>
		                            <p class="notagree">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
		                        </div>
		                        <div class="paragraph">
		                            <div class="agreeparagraph">
		                                <label class="shortparagraph check" for="RequiredTermsCondition">
		                                    <input id="RequiredTermsCondition" type="checkbox" class="oneagreeparagraph agreement1" name="agree">
		                                    <span class="ico"></span>
		                                    <span class="txt">이용약관 동의</span>
		                                </label>
		                                <span class="sentenceessential">(필수)</span>
		                            </div>
		                            <a class="termsview">약관보기></a>
		                        </div>
		                        <div class="paragraph">
		                            <div class="agreeparagraph">
		                                <label class="shortparagraph check" for="RequiredTermsOfPrivacy">
		                                    <input id="RequiredTermsOfPrivacy" type="checkbox" class="oneagreeparagraph agreement2" name="agree">
		                                    <span class="ico"></span>
		                                    <span class="txt">개인정보 수집∙이용 동의</span>
		                                </label>
		                                <span class="sentenceessential">(필수)</span>
		                            </div>
		                            <a class="termsview">약관보기></a>
		                        </div>
		                        <div class="paragraph">
		                            <div class="agreeparagraph">
		                                <label class="shortparagraph check" for="OptionalTermsOfPrivacy">
		                                    <input id="OptionalTermsOfPrivacy" type="checkbox" class="oneagreeparagraph agreement3" name="agree">
		                                    <span class="ico"></span>
		                                    <span class="txt">개인정보 수집∙이용 동의</span>
		                                </label>
		                                <span class="sentenceessential">(선택)</span>
		                            </div>
		                            <a class="termsview">약관보기></a>
		                        </div>
		                        <div class="choiceagree">
		                            <div class="agreeparagraph">
		                                <label class="shortparagraph check" for="SignupEventAll">
		                                    <input id="SignupEventAll" type="checkbox" class="oneagreeparagraph agreement4" name="agree">
		                                    <span class="ico"></span>
		                                    <span class="txt">무료배송, 할인쿠폰 등 혜택/정보 수신 동의</span>
		                                </label>
		                                <span class="sentenceessential">(선택)</span>
		                            </div>
		                            <div class="choiceinfo">
		                                <label class="checkinfo check" for="OptionalTermsOfSms">
		                                    <input id="OptionalTermsOfSms" type="checkbox" class="oneagreeparagraph agreement5" name="agree">
		                                    <span class="ico"></span>
		                                    <span class="txt">SMS</span>
		                                </label>
		                                <label class="checkinfo check" for="OptionalTermsOfMailing">
		                                    <input id="OptionalTermsOfMailing" type="checkbox" class="oneagreeparagraph agreement6" name="agree">
		                                    <span class="ico"></span>
		                                    <span class="txt">이메일</span>
		                                </label>
		                            </div>
		                            <div class="choiceinfo">
		                                <p class="choiceinfotext">동의 시 한 달간 [5%적립] + [2만원 이상 무료배송] 첫 주문 후 안내</p>
		                            </div>
		                        </div>
		                        <div class="paragraph">
		                            <div class="agreeparagraph">
		                                <label class="shortparagraph check" for="RequiredSignupAge">
		                                    <input id="RequiredSignupAge" type="checkbox" class="oneagreeparagraph agreement7" name="agree">
		                                    <span class="ico"></span>
		                                    <span class="txt">본인은 만 14세 이상입니다.</span>
		                                </label>
		                                <span class="sentenceessential">(필수)</span>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		             </div>
			            
	            <div class="joinspace">
		            <button id="joinBtn" class="joinbutton" type="submit" width="240" height="56" radius="3" >
		                <span class="sentencedoublecheck">가입하기</span>
		            </button>
            	</div>
    		</div>
    	</div>
	</form>
	    <!-- 회원가입 영역 종료 -->
    <!-- 프로젝트 작성 영역 end -->
    <!-- 푸터 영역 -->
<footer>
        <div class="footer-top-frame">
            <div class="footer-serviceCenter-inquiry">
                <div class="top-left-footer">
                    <a href="serviceCenter.html">
                        <h2>고객행복센터</h2>
                        <strong class="number">1644-1107<span>365일 오전 7시 - 오후 7시</span></strong>
                        <div class="footer-inquiry-time-button-frame">
                            <div class="footer-inquiry-time-button-line">
                                <button class="footer-button">카카오톡 문의</button>
                                <p class="footer-time-text">
                                    월~토요일 | 오전 7시 - 오후 6시<br>
                                    일/공휴일 | 오전 7시 - 오후 1시
                                </p>
                            </div>

                            <div class="footer-inquiry-time-button-line">
                                <button class="footer-button">1:1 문의</button>
                                <p class="footer-time-text">
                                    365일<br>
                                    고객센터 운영시간에 순차적으로 답변드리겠습니다.
                                </p>
                            </div>

                            <div class="footer-inquiry-time-button-line">
                                <button class="footer-button">대량주문 문의</button>
                                <p class="footer-time-text">
                                    월~금요일 | 오전 9시 - 오후 6시<br>
                                    점심시간 | 낮 12시 - 오후 1시
                                </p>
                            </div>
                            <p class="no-member">
                                비회원 문의 : market@kurlycorp.com<br>
                                비회원 대량주문 문의 : marketgift@kurlycorp.com
                            </p>
                        </div>
                    </a>               
                </div>
                <div class="top-light-footer">
                    <ul class="Information">
                        <li>컬리소개</li>
                        <li>컬리소개영상</li>
                        <li>인재채용</li>
                        <li>이용약관</li>
                        <li>개인정보처리방침</li>
                        <li>이용안내</li>
                    </ul>
                    <div class="Information-text">
                        법인명 (상호) : 주식회사 컬리 | 사업자등록번호 : 000-00-00000 <a href="#">사업자정보 확인</a><br>
                        통신판매업 : 제 2022-서울강남-77777호 | 개인정보보호책임자 : 이컬리<br>
                        주소 : 서울특별시 컬리구 컬리란로 111, 11층(컬리동) | 대표이사 : 김컬리<br>
                        입점문의 : <a href="#">입점문의하기</a> | 제휴문의 : <a href="#">marketkurly@kurlycorp.com</a><br>
                        채용문의 : <a href="#">kurlymarket@kurlycorp.com</a><br>
                        팩스 : 123 - 4567 - 8910
                    </div>
                    <div class="footer-sns-icon">
                        <a href="https://www.instagram.com/"><img src="${contextPath}/컬리이미지/snsIcon/ico_instagram.webp" alt="인스타그램"></a>
                        <a href="https://ko-kr.facebook.com/"><img src="${contextPath}/컬리이미지/snsIcon/ico_fb.webp" alt="페이스북"></a>
                        <a href="https://www.naver.com/"><img src="${contextPath}/컬리이미지/snsIcon/ico_blog.webp" alt="네이버블로그"></a>
                        <a href="https://post.naver.com/"><img src="${contextPath}/컬리이미지/snsIcon/ico_naverpost.webp" alt="네이버포스트"></a>
                        <a href="https://www.youtube.com/?hl=ko&gl=KR"><img src="${contextPath}/컬리이미지/snsIcon/ico_youtube.webp" alt="유튜브"></a>
                    </div>
                </div>
            </div>
            <div class="footer-license">
                <div class="license-list">
                    <img src="${contextPath}/컬리이미지/footerimg/logo_isms.svg" alt="쇼핑몰서비스 인증">
                    <p>
                        [인증범위] 마켓컬리 쇼핑몰 서비스 개발ㆍ운영<br>
                        (심사받지 않은 물리적 인프라 제외)<br>
                        [유효기간] 2022.10.30 ~ 3033.10.30
                    </p>
                </div>
                <div class="license-list">
                    <img src="${contextPath}/컬리이미지/footerimg/logo_privacy.svg" alt="개인정보보호 인증">
                    <p>
                        개인정보보호 우수 웹사이트ㆍ<br>
                        개인정보처리시스템 인증 (ePRIVACY PLUS)
                    </p>
                </div>
                <div class="license-list">
                    <img src="${contextPath}/컬리이미지/footerimg/logo_tosspayments.svg" alt="토스페이먼츠 인증">
                    <p>
                        토스페이먼츠 구매안전(에스크로)<br>
                        서비스를 이용하실 수 있습니다.
                    </p>
                </div>
                <div class="license-list">
                    <img src="${contextPath}/컬리이미지/footerimg/logo_wooriBank.svg" alt="은행협업 인증">
                    <p>
                        고객님이 현금으로 결제한 금액에 대해 우리은행과<br>
                        채무지급보증 계약을 체결하여 안전거래를 보장하고<br>
                        있습니다.
                    </p>
                </div>
            </div>
        </div>
        
        <div class="kurly-precautions">
            <p>
                마켓컬리에서 판매되는 상품 중에는 마켓컬리에 입점한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다.<br>
                마켓플레이스(오픈마켓) 상품의 경우 컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다. 컬리는 해당 상품의 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.
            </p>
            <p>© KURLY CORP. ALL RIGHTS RESERVED</p>
        </div>
    </footer>
    <script>
    $('.userjoin').on('submit',()=>{
    	let idval = $('#id').val();
        let idvalcheck = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
        let idCheckval = $('#idCheckResult').val();
        let pwdval = $('#pw').val();
        let pwdokval = $('#passwordConfirm').val();
        let pwdcheck = /^[a-zA-Z0-9]+$/;
        let nameval = $('#kname').val();
        let emailval = $('#email').val();
        let emailcheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        // 이메일이 적합한지 검사할 정규식
        let addressval = $('#roadAddress').val();
        let phoneval = $('#mobileNumber').val();
        
        if(idCheckval == 'true'){
        	if (!idvalcheck.test(idval) || idval.length<6){
            	alert('아이디는 영소문자,숫자로 구성된 6글자 이상으로 조합하시오.');
                $('#id').focus();
                return false;
            }
        }else{
        	alert('아이디 중복확인을 진행해 주십시오');
            $('#id').focus();
            return false;
        }
        if (!pwdcheck.test(pwdval) || pwdval.length<8){
        	alert('비밀번호는 영대소문자,숫자로 구성된 8글자 이상으로 조합하시오.');
        	$('#pw').focus();
        	return false;
        } else {
        	if(pwdokval){
            	if (pwdval!=pwdokval){
                	alert('비밀번호가 일치하지 않습니다.');
                    $('#passwordConfirm').focus();
                    return false;
                } 
            } else {
            	alert('비밀번호확인을 입력하시오.');
                $('#passwordConfirm').focus();
                return false;
            }
        }
        
        if(nameval == ''){
        	alert('이름을 입력하시오.');
            $('#kname').focus();
            return false;
        }
        
        if(emailval){
        	if (!emailcheck.test(emailval)){
            	alert('형식에 맞지않는 이메일주소입니다. 다시 입력해주시기 바랍니다.');
            	$('#email').focus();
            	return false;
            }
        }else{
        	alert('이메일을 입력하시오.');
            $('#email').focus();
            return false;
        }
        
        if(addressval==''){
        	alert('주소를 입력하시오.');
            $('#addressarea_before').focus();
            return false;
        }
        
        if(phoneval==''){
        	alert('연락처를 입력하시오.');
            $('#mobileNumber').focus();
            return false;
        }
        
    });
</script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
                document.getElementById('addressarea_after').style.display = "inline-block";
                document.getElementById('addressbtnarea_after').style.display = "block";
                document.getElementById('addressarea_before').style.display = "none";
                
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    

                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
    <script type="text/javascript" src="${contextPath}/js/commen.js"></script>
    <script type="text/javascript" src="${contextPath}/js/join.js"></script>

</body>
</html>