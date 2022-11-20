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
    <title>상품상세</title>
    
    <link rel="stylesheet" href="${contextPath}/css/commen.css">
    <link rel="stylesheet" href="${contextPath}/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/css/productDetailPage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="${contextPath}/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/js/productDetailPage.js"></script>
</head>
<body>
<script type="text/javascript">
	function addwish(obj) {
		let form = document.forms.frmgoodsdetail;
		let goodscode = form.elements.goodscode.value;
		let goodsimage = form.elements.goodsimage.value;
		let goodsname = form.elements.goodsname.value;
		let goodsprice = form.elements.goodsprice.value;
		let data = "&goodscode="+goodscode+"&goodsimage="+goodsimage+"&goodsname="+goodsname+"&goodsprice="+goodsprice;
		obj.action="${contextPath}/member/addwish.do?id=${sessionID}" + "&" + data;
		obj.submit();
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



    <!-- 프로젝트 작성 영역 start -->


<!--상품상세정보 백엔드부분-->
    <form name="frmgoodsdetail">
	    <main class="main-frame">
	        <div class="main-area">
	        <c:forEach var="gdetail" items="${gdetail}">
	            <article class="product-information-area">
	                <div class="left-img-area">
	                	<img src="${contextPath}/컬리이미지/${gdetail.goodsimage}" alt="가지상세이미지">
	                </div><!--12.상품 메인이미지 goodsimgage-->
	                <input type="hidden" name="goodscode" id="goodscode" value="${gdetail.goodscode}">
	                <input type="hidden" name="goodsimage" id="goodsimage" value="${gdetail.goodsimage}">
	                <input type="hidden" name="goodsname" id="goodsname" value="${gdetail.goodsname}">
	                <input type="hidden" name="goodsprice" id="goodsprice" value="${gdetail.goodsprice}">   <!--1.상품코드-->                               
	                <div class="right-information-area">
	                    <div>
	                        <div class="title-sub-text">샛별배송</div>
	                        <div class="title-area">
	                            <div class="gaji-title">
	                                ${gdetail.goodsname}                 <!--2..상품이름 부분 goodsname -->
	                                <button class="share-img"></button>
	                            </div>
	                            <!--3.상품 문구goodsinfo-->
	                            ${gdetail.goodsinfo}
	                        </div>
	                    </div>
	
	                    <div class="product-information">
	                        <!-- 4.상품 가격  goodsprice-->
	                        <span class="product-information-value">${gdetail.goodsprice}</span>
	                        <span class="product-information-unit">원</span> 
	                        
	                        <!--5,상품할인율? goodsdiscount-->
	                        <input type="hidden" value="${gdetail.goodsdiscount}">
	                        <!--17번 상품 제고 -->
	                        <input type="hidden" value="${gdetail.goodsstock}">
	                        
	                    </div>
	
	                    <div class="guide-text">로그인 후, 적립 혜택이 제공됩니다.</div>
	
	                    <div class="sales-content">
	                        <dl class="sales-content-list">
	                            <dt class="sales-content-list-child">배송</dt>
	                            <dd class="sales-content-list-child2">
	                                ${gdetail.goodsdelivery}<!--6.배송타입-->
	                                
	                            </dd>
	                        </dl>
	
	                        <dl class="sales-content-list">
	                            <dt class="sales-content-list-child">판매자</dt>
	                            <dd class="sales-content-list-child2">
	                                <p class="sales-content-list-p">컬리</p>
	                            </dd>
	                        </dl>
	
	                        <dl class="sales-content-list">
	                            <dt class="sales-content-list-child">포장타입</dt>
	                            <dd class="sales-content-list-child2">
	                                ${gdetail.goodspackage}<!--7.포장타입 goodspackage-->
	                                
	                            </dd>
	                        </dl>
	
	                        <dl class="sales-content-list">
	                            <dt class="sales-content-list-child">판매단위</dt>
	                            <dd class="sales-content-list-child2">
	                                ${gdetail.goodsunit}<!--8.판매단위 goodsunit-->
	                            </dd>
	                        </dl>
	
	                        <dl class="sales-content-list">
	                            <dt class="sales-content-list-child">중량/용량</dt>
	                            <dd class="sales-content-list-child2">
	                                ${gdetail.goodsweight}<!--9.중량용량 goodsweight-->
	                            </dd>
	                        </dl>
	
	                        <dl class="sales-content-list">
	                            <dt class="sales-content-list-child">원산지</dt>
	                            <dd class="sales-content-list-child2">
	                                ${gdetail.goodsorgin}<!--10. 원산지 goodsorgin-->
	                            </dd>                         
	                                      <!--11.상품찾는 이름? goodsselect-->
	                            
	                        </dl>
	                        <input type="hidden" value="${gdetail.goodsselect}">
	                        <!--13.상품 컨텐츠 내용 goodscontents-->
	                        ${gdetail.goodscontents1}
	                        <!--13.컨텐스내용1번끝-->
	                    </div>
	                    
	                    <div class="shopping-basket-area">
	                        <!--14.컨텐츠 내용 2번goodscontents2-->
	                        ${gdetail.goodscontents2}
	                        <!--14.컨텐츠 내용 2번끝-->

	                        
	
	                        <div class="put-in-shopping-cart">
	                            <button type="button" class="heart-img" onclick="addwish(this.form);">
	                                <span>
	                                    <img src="${contextPath}/컬리이미지/기타/heart.svg" alt="하트">
	                                </span>
	                            </button>
	                            <button type="button" class="bell-img" onclick="addwish(this.form);">
	                                <span>
	                                    <img src="${contextPath}/컬리이미지/기타/bell.svg" alt="종">
	                                </span>
	                            </button>
	                            <div class="shopping-cart-btn">
	                                <button type="button" class="input-cart-btn"><span>장바구니 담기</span></button>
	                            </div>
	                        </div>
	                    </div>
	                    
	                </div>
	            </article>
	
	            <nav class="product-information-sub-menu">
	                <nav class="product-information-sub-menu-frame">
	                    <div class="sub-menu-1">
	                        <a href="#product-description-frame" class="sub-menu-a"><span>상품설명</span></a>
	                    </div>
	                    <div class="sub-menu-2">
	                        <a href="#gaji-detail" class="sub-menu-a"><span>상세정보</span></a>
	                    </div>
	                    <div class="sub-menu-2">
	                        <a href="#review-form-frame" class="sub-menu-a"><span>후기</span><span>(2)</span></a>
	                    </div>
	                    <div class="sub-menu-2">
	                        <a href="#inquiry-form-frame" class="sub-menu-a"><span>문의</span></a>
	                    </div>
	                </nav>
	            </nav>
	
	            <div class="product-description-frame">
	                <div class="gaji-description">
	                    <div class="gaji-description-1">
	                        <div class="gaji-description-2">
	                            <!--15.컨텐츠내용3 goodscontents3-->
	                            ${gdetail.goodscontents3}
	                            <!--15.컨텐츠내용3 goodscontents3 끝-->
	                        </div>                        
	                    </div>
	                </div>
	                
	                <div class="gaji-detail">
	                    
	                    <!--16.컨텐츠 내용4 goodscontents4시작-->
	                    ${gdetail.goodscontents4}
	                    <!--16. 컨텐츠내용4 goodscontents4 끝-->
		</c:forEach>
	                    <div class="seller">
	                        <h3>판매자정보</h3>
	                        <ul class="seller-table">
	                            <li>판매자</li>
	                            <li>컬리</li>
	                        </ul>
	                    </div>
	
	                    <div class="why-kurly">
	                        <div class="why-kurly-title">
	                            <span>WHY KURLY</span>
	                        </div>
	
	                        <div class="why-kurly-table">
	                            <dl class="why-kurly-dl">
	                                <dt class="why-kurly-dt1 why-kurly-dt">깐깐한 상품위원회</dt>
	                                <dd class="why-kurly-dd">
	                                    나와 내 가족이 먹고 쓸 상품을 고르는<br>마음으로 매주 상품을 직접 먹어보고,<br>경험해보고 성분, 맛, 안정성 등 다각도의<br>기준을 통과한 상품만을 판매합니다.
	                                    <span>(온라인 기준 / 자사몰, 직구 제외)</span>
	                                </dd>
	                            </dl>
	                            <dl class="why-kurly-dl">
	                                <dt class="why-kurly-dt2 why-kurly-dt">차별화된 Kurly Only 상품</dt>
	                                <dd class="why-kurly-dd">
	                                    전국 각지와 해외의 훌륭한 생산자가<br>믿고 선택하는 파트너, 마켓컬리.<br>3천여 개가 넘는 컬리 단독 브랜드, 스펙의<br>Kurly Only 상품을 믿고 만나보세요.
	                                    <span>(온라인 기준 / 자사몰, 직구 제외)</span>
	                                </dd>
	                            </dl>
	                            <dl class="why-kurly-dl">
	                                <dt class="why-kurly-dt3 why-kurly-dt">신선한 풀콜드체인 배송</dt>
	                                <dd class="why-kurly-dd">
	                                    온라인 업계 최초로 산지에서 문 앞까지<br>상온, 냉장, 냉동 상품을 분리 포장 후<br>최적의 온도를 유지하는 냉장 배송 시스템,<br>풀콜드체인으로 상품을 신선하게 전해드립니다.
	                                    <span>(샛별배송에 한함)</span>
	                                </dd>
	                            </dl>
	                            <dl class="why-kurly-dl">
	                                <dt class="why-kurly-dt4 why-kurly-dt">고객, 생산자를 위한 최선의 가격</dt>
	                                <dd class="why-kurly-dd">
	                                    매주 대형 마트와 주요 온라인 마트의 가격<br>변동 상황을 확인해 신선식품은 품질을<br>타협하지 않는 선에서 최선의 가격으로,<br>가공식품은 언제나 합리적인 가격으로<br>정기 조정합니다.
	                                </dd>
	                            </dl>
	                            <dl class="why-kurly-dl">
	                                <dt class="why-kurly-dt5 why-kurly-dt">환경을 생각하는 지속 가능한 유통</dt>
	                                <dd class="why-kurly-dd">
	                                    친환경 포장재부터 생산자가 상품에만<br>집중할 수 있는 직매입 유통구조까지,<br>지속 가능한 유통을 고민하며 컬리를 있게<br>하는 모든 환경(생산자, 커뮤니티, 직원)이<br>더 나아질 수 있도록 노력합니다.
	                                </dd>
	                            </dl>
	                        </div>
	                    </div>
	
	                    <div class="happiness-center-contact-us-frame">
	                        <div class="happiness-center-contact-us-area">
	                            <div class="happiness-center">
	                                <h5>고객행복센터</h5>
	                                <p class="happiness-center-text">궁금하신 점이나 서비스 이용에 불편한 점이 있으신가요?<span>문제가 되는 부분을 사진으로 찍어 아래 중 편하신 방법으로 접수해 주시면 빠르게 도와드리겠습니다.</span></p>
	                            </div>
	                            <ul class="contact-us">
	                                <li class="contact-us-list">
	                                    <strong class="contact-us-strong">전화 문의 1644-1107</strong>
	                                    <span>월~토요일 오전 7시 - 오후 6시</span>
	                                </li>
	                                <li class="contact-us-list">
	                                    <strong class="contact-us-strong">카카오톡 문의</strong>
	                                    <span>월~토요일 오전 7시 - 오후 6시</span>
	                                    <span>일/공휴일 오전 7시 - 오후 1시</span>
	                                    <strong class="contact-us-strong-low">카카오톡에서 '마켓컬리' 를 검색 후<br>대화창에 문의 및 불편사항을<br>남겨주세요.</strong>
	                                </li>
	                                <li class="contact-us-list">
	                                    <strong class="contact-us-strong">홈페이지 문의</strong>
	                                    <span>365일</span>
	                                    <span>로그인 &gt; 마이컬리 &gt; 1:1 문의</span>
	                                    <strong class="contact-us-strong-low">고객센터 운영 시간에 순차적으로<br>답변해드리겠습니다.</strong>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	
	                    <div class="exchange-and-refund-information">
	                        <strong class="exchange-and-refund-information-title">교환 및 환불 안내</strong>
	                        <p class="exchange-and-refund-information-text">교환 및 환불이 필요하신 경우 고객행복센터로 문의해주세요.</p>
	                        <button type="button" class="change-list-btn">
	                            <i id="change-icon" class="fa-solid fa-chevron-up"></i>
	                        </button>
	                    </div>
	
	                    <div class="exchange-refund-frame">
	                        <strong class="exchange-refund-title">01. 상품에 문제가 있는 경우</strong>
	                        <p class="exchange-refund-text">
	                            받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터 3개월 이내,
	                            그 사실을 알게 된 날부터 30일 이내에 교환 및 환불을 요청하실 수 있습니다.
	                            상품의 정확한 상태를 확인할 수 있도록 사진을 함께 보내주시면 더 빠른 상담이 가능합니다.
	                            <span class="exchange-refund-text-span-padding">※ 상품에 문제가 있는 것으로 확인되면 배송비는 컬리가 부담합니다.</span>
	                        </p>
	                    </div>
	
	                    <div class="exchange-refund-frame">
	                        <strong class="exchange-refund-title">02. 단순 변심, 주문 착오의 경우</strong>
	                        <p class="exchange-refund-text">
	                            <strong class="exchange-refund-text-strong">신선 / 냉장 / 냉동 식품</strong>재판매가 불가한 상품의 특성상, 단순 변심, 주문 착오 시 교환 및 반품이 어려운 점 양해 부탁드립니다.
	                            상품에 따라 조금씩 맛이 다를 수 있으며, 개인의 기호에 따라 같은 상품도 다르게 느끼실 수 있습니다.
	                            <strong class="exchange-refund-text-strong">유통기한 30일 이상 식품 (신선 / 냉장 / 냉동 제외) &amp; 기타 상품</strong>
	                            상품을 받은 날부터 7일 이내에 고객행복센터로 문의해주세요.
	                            <span class="exchange-refund-text-span-padding">※ 단순 변심으로 인한 교환 또는 환불의 경우 고객님께서 배송비 6,000원을 부담하셔야 합니다.
	                            (주문 건 배송비를 결제하셨을 경우 3,000원)</span>
	                        </p>
	                    </div>
	
	                    <div class="exchange-refund-frame">
	                        <strong class="exchange-refund-title">03. 교환·반품이 불가한 경우</strong>
	                        <p class="exchange-refund-text-2">다음에 해당하는 교환·환불 신청은 처리가 어려울 수 있으니 양해 부탁드립니다.
	                            <span class="exchange-refund-text-list">고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우<br>
	                            (단, 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)</span>
	                            <span class="exchange-refund-text-list">고객님의 사용 또는 일부 소비로 상품의 가치가 감소한 경우</span>
	                            <span class="exchange-refund-text-list">시간이 지나 다시 판매하기 곤란할 정도로 상품의 가치가 감소한 경우</span>
	                            <span class="exchange-refund-text-list">복제가 가능한 상품의 포장이 훼손된 경우</span>
	                            <span class="exchange-refund-text-list">고객님의 주문에 따라 개별적으로 생산되는 상품의 제작이 이미 진행된 경우</span>
	                        </p>
	                    </div>
	
	                    <div class="withdraw-order">
	                        <strong class="withdraw-order-title">주문 취소 안내</strong>
	                        <p class="withdraw-order-list">
	                            <strong>- [주문완료] 상태일 경우에만 주문 취소 가능합니다.<br>
	                            - [마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소하실 수 있습니다.</strong>
	                        </p>
	                        <button type="button" class="withdraw-order-btn">
	                            <i id="icon-change" class="fa-solid fa-chevron-up"></i>
	                        </button>
	                    </div>
	
	                    <div class="order-cancellation">
	                        <strong>주문 취소 관련</strong>
	                        <p>- [배송준비중] 부터는 취소가 불가하니, 반품으로 진행해주세요. (상품에 따라 반품이 불가할 수 있습니다.)</p>
	                    </div>
	
	                    <div class="cancel-payment-authorization">
	                        <strong>결제 승인 취소 / 환불 관련</strong>
	                        <p>- 카드 환불은 카드사 정책에 따르며, 자세한 사항은 카드사에 문의해주세요.
	                            - 결제 취소 시, 사용하신 적립금과 쿠폰도 모두 복원됩니다.</p>
	                    </div>
	
	                    <div class="delivery-related-information">
	                        <strong>배송관련 안내</strong>
	                        <p>배송 과정 중 기상 악화 및 도로교통 상황에 따라 부득이하게 지연 배송이 발생될 수 있습니다.</p>
	                    </div>
	                </div>
	                
	
	                <div id="review-form-frame">
	                    <section class="review-form-area">
	                        <h2>상품 후기</h2>
	                        <ul class="review-event-list">
	                            <li>사진후기 100원, 글후기 50원 적립금 혜택이 있어요.</li>
	                            <li>퍼플, 더퍼플은 2배 적립 (사진 200원, 글 100원) / 주간 베스트 후기로 선정 시 5,000원을 추가 적립</li>
	                            <li>후기 작성은 배송완료일로부터 30일 이내 가능합니다.</li>
	                            <li>작성하신 후기는 확인 후 적립금이 지급됩니다. (영업일 기준 평균 1~2일 소요)</li>
	                        </ul>
	                        <div class="review-img-frame">
	                            <button class="review-img1 review-img"></button>
	                            <button class="review-img2 review-img"></button>
	                            <button class="review-img3 review-img"></button>
	                            <button class="review-img4 review-img"></button>
	                            <button class="review-img5 review-img"></button>
	                            <button class="review-img6 review-img"></button>
	                            <button class="review-img7 review-img"></button>
	                            <button class="review-img8 review-img"></button>
	                            <a class="review-img-plus"><span>+더보기</span></a>
	                        </div>
	
	                        <div class="poeple-review-text-page">
	                            <div class="review-text-page-1div">
	                                <span>총 3개</span>
	                                <div class="review-text-page-1div-btn">
	                                    <button class="best-btn">추천순</button>
	                                    <button class="recent-btn">최근등록순</button>
	                                </div>
	                            </div>
	        
	                            <div class="review-text-page-2div">
	                                <span>공지</span>
	                                <button>상품 후기 적립금 정책 안내</button>
	                            </div>
	        
	                            <div class="review-text-page-2div">
	                                <span>공지</span>
	                                <button>금주의 베스트 후기 안내</button>
	                            </div>
	        
	                            <div class="review-text-page-3div">
	                                <div class="review-user-frame">
	                                    <div class="review-user-area">
	                                        <span>베스트</span>
	                                        <span>퍼플</span>
	                                        <span>이*희</span>
	                                    </div>
	                                </div>
	                                
	                                <article class="review-content-frame">
	                                    <div class="review-content-area">
	                                        <div class="review-item-name">
	                                            <h3>[KF365] 가지 2입</h3>
	                                        </div>
	                                        <p>여름철에 제철인 가지를 자주 사먹는데 컬리를 통해 편하게 배송 받았어요.
	                                            보라색 고운 빛깔과 윤기가 있고 길게 뻗은 싱싱한 가지가 배송되었네요.
	                                            수분이 많고 열량이 낮은데 우리 몸에 이로운 효과를 많이 주는 건강 식재료라 아이한테 꼭 먹이고 싶은 데 무쳐줘도 볶아줘도 흐물거리는 가지 특유의 식감때문에 잘 안먹어요ㅠㅜ
	                                            뭐 색다른방법 없을까하다가 썰은 가지를 프라이팬에 구워서 두가지종류 치즈를 올려서 줬더니 너무 잘 먹네요.
	                                            가지가 치즈를 만나니 맛도 좋고 영양도 풍부해서 간식으로 준비해줘도 좋고 빵도우 위에 올린 치즈보다 밀가루가 아니니까 속도 한결 편하네요~
	                                            다음에는 응용해서 가지 피자를 만들어줘야겠어요^^</p>
	                                        <div class="review-item-image">
	                                            <button class="review-item-img1 review-img"></button>
	                                            <button class="review-item-img2 review-img"></button>
	                                        </div>
	                                        <div class="review-day-or-like">
	                                            <div class="review-day">
	                                                <span>2021.09.05</span>
	                                            </div>
	                                            <button class="like-btn">
	                                                <span><i class="fa-regular fa-thumbs-up"></i></span>
	                                                <span>도움돼요 7</span>
	                                            </button>
	                                        </div>
	                                    </div>
	                                </article>
	                            </div>
	        
	                            <div class="review-text-page-3div">
	                                <div class="review-user-frame">
	                                    <div class="review-user-area">
	                                        <span>베스트</span>
	                                        <span>퍼플</span>
	                                        <span>이*희</span>
	                                    </div>
	                                </div>
	                                <article class="review-content-frame">
	                                    <div class="review-content--area">
	                                        <div class="review-item-name">
	                                            <h3>[KF365] 가지 2입</h3>
	                                        </div>
	                                        <p>여름철에 제철인 가지를 자주 사먹는데 컬리를 통해 편하게 배송 받았어요.
	                                            보라색 고운 빛깔과 윤기가 있고 길게 뻗은 싱싱한 가지가 배송되었네요.
	                                            수분이 많고 열량이 낮은데 우리 몸에 이로운 효과를 많이 주는 건강 식재료라 아이한테 꼭 먹이고 싶은 데 무쳐줘도 볶아줘도 흐물거리는 가지 특유의 식감때문에 잘 안먹어요ㅠㅜ
	                                            뭐 색다른방법 없을까하다가 썰은 가지를 프라이팬에 구워서 두가지종류 치즈를 올려서 줬더니 너무 잘 먹네요.
	                                            가지가 치즈를 만나니 맛도 좋고 영양도 풍부해서 간식으로 준비해줘도 좋고 빵도우 위에 올린 치즈보다 밀가루가 아니니까 속도 한결 편하네요~
	                                            다음에는 응용해서 가지 피자를 만들어줘야겠어요^^</p>
	                                        <div class="review-item-image">
	                                            <button></button>
	                                            <button></button>
	                                        </div>
	                                        <div class="review-day-or-like">
	                                            <div class="review-day">
	                                                <span>2021.09.05</span>
	                                            </div>
	                                            <button class="like-btn">
	                                                <span><i class="fa-regular fa-thumbs-up"></i></span>
	                                                <span>도움돼요 7</span>
	                                            </button>
	                                        </div>
	                                    </div>
	                                </article>
	                            </div>
	                                          
	                            <div  class="review-text-page-4div">
	                                <button class="review-left"><i class="fa-solid fa-chevron-left"></i></button>
	                                <button class="review-right"><i class="fa-solid fa-chevron-right"></i></button>
	                            </div>
	                        </div>
	                    </section>
	                </div>
	<!-- 상품문의 작성 -->
	                <div class="inquiry-form-frame">
	                    <div class="inquiry-form-area">
	                    
	                        <div class="contect-us-btn">
	                            <span><a href="${contextPath}/good1/QnaAdd.do?goodscode=${Qlist.goodscode}">문의하기</a></span>
	                        </div>
	
	                        <div class="user-inquiry">
	                            <strong class="user-inquiry-title">상품 문의</strong>
	                            <ul class="user-inquiry-guide">
	                                <li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
	                                <li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내<a href="#" class="oneVSone">1:1 문의</a>에 남겨주세요</li>
	                            </ul>
	                        </div>
	
	                        <div class="user-inquiry-post-frame">
	                             <table class="user-inquiry-post">
	                                <thead class="user-inquiry-list-title-area">
	                                    <tr>
	                                        <th class="user-inquiry-title">제목</th>
	                                        <th class="user-inquiry-auther">작성자</th>
	                                        <th class="user-inquiry-created-date">작성일</th>
	                                        <th class="user-inquiry-status">답변상태</th>
	                                    </tr>
	                                </thead>
	                                <tbody class="user-inquiry-post-list">
	                               
	                                    <tr class="user-inquiry-post">
	                                        <td class="user-inquiry-post-title">
	                                            <span>공지</span>
	                                            판매 (일시)중단 제품 안내 (22.10.27 업데이트)
	                                        </td>
	                                        <td class="user-inquiry-post-auther">Marketkurly</td>
	                                        <td class="user-inquiry-post-created-date">2017.02.01</td>
	                                        <td class="user-inquiry-post-status">-</td>
	                                    </tr>
	                                    
	                                    <c:forEach var="Qlist" items="${Qlist}"> 
	                                   	<tr class="user-inquiry-post">
	                                        <td class="user-inquiry-post-title">
	                                            <input type="hidden" value="${Qlist.id}">
	                                            <input type="hidden" value="${Qlist.goodsimage}">
	                                            <input type="hidden" value="${Qlist.goodscode}">
	                                            <input type="hidden" value="${Qlist.id}">
	                                            <input type="hidden" value="${Qlist.qnalock}">
	                                            <input type="hidden" value="${Qlist.qnaanswer}">
												${Qlist.name}                    
	                                        </td>
	                                        <td class="user-inquiry-post-auther">${Qlist.qnatitle}</td>
	                                        <td class="user-inquiry-post-created-date">${Qlist.qnacontents}</td>
	                                        <td class="user-inquiry-post-status">${Qlist.qnadate}</td>
	                                    </tr>
	                                </c:forEach>
	                                </tbody>
	                            </table>
	                            
	                        </div>
	  				
	                        <div  class="review-text-page-4div">
	                            <button class="review-left"><i class="fa-solid fa-chevron-left"></i></button>
	                            <button class="review-right"><i class="fa-solid fa-chevron-right"></i></button>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </main>
	  </form>
	

	    <div class="sub-order-frame">
	        <div class="sub-order-area">
	            <button class="item-choice">
	                <span>상품선택</span>
	                <i id="icon" class="fa-solid fa-chevron-up"></i>
	            </button>
	            <form name="frmgoodsdetail">
		            <div class="item-quantity-information-one-frame">
		                <div class="item-quantity-information-one-area">
		                    <span class="item-quantity-information-name">
		                        <span class="item-quantity-information-title">[KF365] 가지 2입</span>
		                        <span class="item-point-guide">적립제외상품</span>
		                    </span>
		                    <span class="item-count-btn-frame">
		                        <div class="item-count-btn-area">
		                            <button type="button" class="item-count-btn-down"><!--back img--></button>
		                            <div class="item-count-btn-number">1</div>
		                            <button type="button" class="item-count-btn-up"><!--back img--></button>
		                        </div>
		                        <span class="item-value-area">
		                            <span>2,480원</span>
		                        </span>
		                    </span>
		                </div>
		            </div>
		
		            <div class="item-quantity-information-two-frame">
		                <div class="item-price-area">
		                    <div class="item-price">
		                        <span class="item-price-title">총 상품금액 :</span>
		                        <span class="item-price-value">2,480</span>
		                        <span class="item-price-won">원</span>
		                    </div>
		                    <div class="item-point">
		                        <span class="item-point-mark">적립</span>
		                        <span class="item-point-login">로그인 후, 적립 혜택 제공</span>
		                    </div>
		                </div>
		            </div>
		
		            <div class="item-quantity-information-three-frame">
		                <div class="item-input-shoppingback-frame">
		                    <div class="item-input-shoppingback-area">
		                        <button type="button" class="heart-img iconImg">
		                            <span>
		                                <img src="${contextPath}/컬리이미지/기타/heart.svg" alt="하트" onclick="addwish(this.form)">
		                            </span>
		                        </button>
		                        <button type="button" class="bell-img iconImg">
		                            <span>
		                                <img src="${contextPath}/컬리이미지/기타/bell.svg" alt="종">
		                            </span>
		                        </button>
		                        <div class="shoppingback">
		                            <button class="item-input-shoppingback" type="button">
		                                <span>장바구니 담기</span>
		                            </button>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </form>
	        </div>
	    </div>


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
                <div class="top-right-footer">
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
</body>
</html>