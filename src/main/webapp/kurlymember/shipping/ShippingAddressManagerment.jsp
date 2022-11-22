<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> <%-- 상대경로 현제 문서 위치를 기준으로 경로를 인식하는 방법--%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리</title>
<link rel="stylesheet" href="${contextPath}/css/commen.css">
<link rel="stylesheet" href="${contextPath}/css/normalize.css">
<link rel="stylesheet" href="${contextPath}/css/ShippingAddressManagement.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<script src="${contextPath}/js/jquery-3.6.1.min.js"></script>
</head>
<body>
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
    <!-- 프로젝트 작성 영역 start -->
	<script type="text/javascript">
		function addshippingForm(obj) {
			obj.action = "${contextPath}/member/addshippingForm.do";
			obj.submit();
		}
		function updateshippingForm(obj) {
			let shippingindex = document.frmshippingform.index.value;
			alert(shippingindex);
			obj.action = "${contextPath}/member/updateshippingForm.do?shippingindex="+shippingindex;
			obj.submit();
		}
	</script>
    <main class="main-frame">
        <div class="my-information-list-frame">
            <div class="my-information-list-area">
                <div class="my-information-list-area-no1">
                    <div class="my-name-area">
                        <div class="tier">웰컴</div>
                        <div class="my-name">
                            <strong>${sessionID}님</strong>
                        </div>
                    </div>

                    <div class="tier-benefits">
                        <p>적립 5%</p>
                        <p>최초 1회 무료배송</p>
                    </div>

                    <div class="tier-list">
                        <button>전체등급 보기</button>
                        <button>다음 달 예상등급 보기</button>
                    </div>
                </div>

                <div class="my-information-list-area-no2">
                    <div class="reserves">
                        <button class="my-information-btn">
                            <div class="reserves-title">적립금 <i class="fa-solid fa-caret-right"></i></div>
                            <div class="reserves-value">10,000 <span>원</span></div>
                        </button>
                    </div>

                    <div class="coupon">
                        <button class="my-information-btn">
                            <div class="coupon-title">쿠폰 <i class="fa-solid fa-caret-right"></i></div>
                            <div class="coupon-count">0 <span>개</span></div>
                        </button>
                    </div>

                    <div class="my-kurly-style">
                        <button class="my-information-btn">
                            <div class="my-kurly-style-title">나의 컬리 스타일 <img src="${contextPath}/컬리이미지/kulry-logo/new.png" alt="새로운 소식"> <i class="fa-solid fa-caret-right"></i></div>
                            <div class="registration">등록하기</div>
                        </button>
                    </div>
                </div>
                <div class="my-information-list-area-no2">
                    <div class="learn-btn-area">
                        <button class="learn-btn">
                            <div class="learn-btn-title">컬리 피플 박스 <i class="fa-solid fa-caret-right"></i></div>
                            <div class="learn-btn-learn">알아보기</div>
                        </button>
                    </div>
                    <div class="learn-btn-area">
                        <button class="learn-btn">
                            <div class="learn-btn-title">컬리패스</div>
                            <div class="learn-btn-learn">알아보기</div>
                        </button>
                    </div>
                </div>
            </div>
            <a href="#" class="my-information-list-ad"><img src="${contextPath}/컬리이미지/wishlist_img/ad.jpg" alt="광고"></a>
        </div>

        <div class="wished-item-list-frame">
            <div class="my-kurly-menu-list-frame">
                <div class="my-kurly-menu-list-title">마이 컬리</div>
                <ul class="my-kurly-menu-list">
                    <li><a href="orderHistory.html">주문 내역<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/wishList.do">선물내역 <span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/wishList.do">찜한 상품<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/wishList.do">배송지 관리<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/wishList.do">상품 후기<span><i class="fa-solid fa-caret-right"></i></span></a></li>                    
                    <li><a href="${contextPath}/member/wishList.do">상품 문의<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/wishList.do">적립금<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/wishList.do">쿠폰<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/wishList.do">나의 컬리 스타일<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                    <li><a href="${contextPath}/member/modMember.do">개인정보 수정<span><i class="fa-solid fa-caret-right"></i></span></a></li>
                </ul>
                <div class="help-frame">
                    <div class="help-title">
                        <span>도움이 필요하신가요?</span>
                        <span>1:1 문의하기</span>
                    </div>
                    <span><i class="fa-solid fa-caret-right"></i></span>
                </div>
            </div>
          	<form name="frmshippingform">            
	            <div class="shipping-address-frame">
	                <div class="shipping-address-title-area">
	                    <div class="shipping-address-title">
	                        <div class="shipping-address">
	                            <span class="shipping-address-text1">배송지 관리</span>
	                            <span class="shipping-address-text2">배송지에 따라 상품정보 및 배송유형이 달라질 수 있습니다.</span>
	                        </div>
	                        <div>
	
	                            <div class="new-shipping-adress-plus-frame">
	                                <button class="new-shipping-adress-plus-btn" type="button" height="60" onclick="addshippingForm(this.form);">
	                                    <span class="new-shipping-adress-title"><img src="${contextPath}/컬리이미지/기타/newplus.svg" alt="새 배송지 추가">새 배송지 추가</span>
	                                </button>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="shipping-address-list-title">
	                    <div class="title-a">선택</div>
	                    <div class="title-b">주소</div>
	                    <div class="title-c">받으실 분</div>
	                    <div class="title-d">연락처</div>
	                    <div class="title-e">배송유형</div>
	                    <div class="title-f">수정</div>
	                </div>
	
	                <ul class="shipping-address-list-ul">
	                    <li class="shipping-address-list-li">
	                    	<c:forEach var="sList" items="${shippingList}">
	                    	<input type="hidden" name="index" value="${sList.shippingindex}">
		                        <div class="shipping-address-list-div">
		                            <div class="shipping-address-list-check-area">
		                                <label class="shipping-address-list-check" for="user-shipping-address">
		                                    <input id="user-shipping-address" type="checkbox" class="user-shipping-address-c">
		                                    <img id="checkview" src="${contextPath}/컬리이미지/주문서페이지/다운로드.svg" alt="" class="shipping-address-check-img">
		                                    <img id="checkviewno" src="${contextPath}/컬리이미지/주문서페이지/다운로드 2.svg" alt="" class="shipping-address-check-img">
		                                </label>
		                            </div>
		                            <div class="user-shipping-address-text">
		                                <div>${sList.shippingaddress} ${sList.shippingdetailaddress}</div>
		                            </div>
		                            <div class="user-name">${sList.shippingname}</div>
		                            <div class="user-tell">${sList.shippingphone}</div>
		                            <div class="shipping-address-type">
		                                <div>
		                                    <span type="direct" class="shipping-address-type-text">샛별배송</span>
		                                </div>
		                            </div>
		                            <div class="shipping-address-correction">
			                            <a href="${contextPath}/member/updateshippingForm.do?shippingindex=${sList.shippingindex}" style="text-decoration: none;">
			                                <i class="fa-regular fa-pen-to-square"></i>
			                            </a>
		                            </div>
		                        </div>
	                        </c:forEach>
	                    </li>
	                </ul>
	            </div>
            </form>
        </div>
    </main>

    <!-- 프로젝트 작성 영역 end -->
    <!-- 프로젝트 작성 영역 end -->
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
    <script src="${contextPath}/js/commen.js"></script>
    <script src="${contextPath}/js/ShippingAddressManagement.js"></script>
    
</body>
</html>