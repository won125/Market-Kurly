<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    <%
		request.setCharacterEncoding("utf-8");
	%>
	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>해더/푸터</title>
    <link rel="stylesheet" href="${contextPath}/mkurly/css/commen.css">
    <link rel="stylesheet" href="${contextPath}/mkurly/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/mkurly/css/productDetailPage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="${contextPath}/mkurly/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/mkurly/js/productDetailPage.js"></script>
   
</head>

<body>
<c:choose>
	<c:when test="${result == 1}">
		<script>
			alert("장바구니에 추가하였습니다.");
		</script>
	</c:when>
	<c:when test="${result == 0}">
		<script>
			alert("이미 담겨있는 상품입니다.");
		</script>
	</c:when>
</c:choose>
    <header>
        <div class="top-ad">
            <p>지금 가입하고 인기상품 <strong>100원</strong>에 받아가세요!</p>
        </div>
        <!--  -->
        <div class="top-menu">
            <div class="top-menu-form">
                <div class="top-main">
                    <div class="top-memberService">
                        <a href="member.html">회원가입</a>
                        <div> | </div>
                        <a href="${contextPath}/mkurly/login.jsp">로그인</a>
                        <div> | </div>
                        <a href="serviceCenter.html" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
                    </div>

                    <div class="top-serviceCenter-child">
                        <li>공지사항</li>
                        <li>자주하는 질문</li>
                        <li>1:1 문의</li>
                        <li>대량주문 문의</li>
                    </div>

                    <div class="top-logo-search-icon-frame">
                        <div class="top-logo-search-icon">
                            <a href="index.html"><img src="${contextPath}/mkurly/컬리이미지/kulry-logo/asd-removebg-preview-removebg-preview.png" alt="메인로고" class="main-logo"></a>
                            <a href="index.html"><button class="first-market-button">마켓컬리</button></a>
                            <a href="index.html"><button class="second-market-button">뷰티컬리</button></a>
                            <div class="top-search-frame">
                                <input class="top-search" type="text" placeholder="검색어를 입력해주세요"></input>
                                <div class="search-icon">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </div>
                            </div>
                            
                            <div class="icon-menu">
                                <i class="fa-solid fa-location-dot"></i>
                                <a href="#"><i class="fa-regular fa-heart"></i></a>
                                <a href="${contextPath}/cart/listCart.do"><i class="fa-solid fa-cart-shopping"></i></a>
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
                            <li>신상품</li>
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
                            <a href="#"><li><img src="${contextPath}/mkurly/컬리이미지/커뮤니티/vegetable.png" alt="채소">채소</li></a>
                            <a href="#"><li><img src="${contextPath}/mkurly/컬리이미지/커뮤니티/beef.png" alt="정육">정육</li></a>
                            <a href="#"><li><img src="${contextPath}/mkurly/컬리이미지/커뮤니티/sideDish.png" alt="반찬">반찬</li></a>
                            <a href="#"><li><img src="${contextPath}/mkurly/컬리이미지/커뮤니티/milk.png" alt="유제품품">유제품</li></a>
                            <a href="#"><li><img src="${contextPath}/mkurly/컬리이미지/커뮤니티/alcohol.png" alt="주류">주류</li></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>



    <!-- 프로젝트 작성 영역 start -->



    <main class="main-frame">
        <div class="main-area">
        <form method="get" name="goods" action="${contextPath}/cart/addCart.do">
            <article class="product-information-area">	
            <input type="hidden" name="goodscode" value="1111">
             <input type="hidden" name="id" value="${sessionID}">
                <div class="left-img-area" name="goodsimage"><!--css background img--></div>

                <div class="right-information-area">
                    <div>
                        <div class="title-sub-text">샛별배송</div>
                        <div class="title-area">
                            <div class="gaji-title">
                                <h2 name=goodsname id="goodsname">[KF365] 가지 2입</h2>
                                <button class="share-img"></button>
                            </div>
                            <p name="goodsinfo">믿고 먹을 수 있는 상품을 합리적인 가격에, KF365</p>
                        </div>
                    </div>

                    <div class="product-information">
                        <span class="product-information-value" name="goodsprice">2,480</span>
                        <span class="product-information-unit">원</span>
                    </div>

                    <div class="guide-text">로그인 후, 적립 혜택이 제공됩니다.</div>

                    <div class="sales-content">
                        <dl class="sales-content-list">
                            <dt class="sales-content-list-child">배송</dt>
                            <dd class="sales-content-list-child2">
                                <p class="sales-content-list-p">샛별배송</p>
                                <p class="sales-content-list-p2">23시 전 주문 시 내일 아침 7시 전 도착 (대구·부산·울산 샛별배송 운영시간 별도 확인)</p>
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
                                <p class="sales-content-list-p" name="goodspackage">냉장 (종이포장)</p>
                                <p class="sales-content-list-p2" name="goodsdelivery">택배배송은 에코 포장이 스티로폼으로 대체됩니다.</p>
                            </dd>
                        </dl>

                        <dl class="sales-content-list">
                            <dt class="sales-content-list-child">판매단위</dt>
                            <dd class="sales-content-list-child2">
                                <p class="sales-content-list-p" name="goodsunit">1봉</p>
                            </dd>
                        </dl>

                        <dl class="sales-content-list">
                            <dt class="sales-content-list-child">중량/용량</dt>
                            <dd class="sales-content-list-child2">
                                <p class="sales-content-list-p" name="goodsweight">2입</p>
                            </dd>
                        </dl>

                        <dl class="sales-content-list">
                            <dt class="sales-content-list-child">원산지</dt>
                            <dd class="sales-content-list-child2">
                                <p class="sales-content-list-p" name="goodsorigin">국산</p>
                            </dd>
                        </dl>

                        <dl class="sales-content-list">
                            <dt class="sales-content-list-child">유통기한(또는 소비기한) 정보</dt>
                            <dd class="sales-content-list-child2">
                                <p class="sales-content-list-p">농산물로 별도의 유통기한은 없으나 가급적 빠르게 드시기 바랍니다.</p>
                            </dd>
                        </dl>

                        <dl class="sales-content-list">
                            <dt class="sales-content-list-child">안내사항</dt>
                            <dd class="sales-content-list-child2">
                                <p class="sales-content-list-p">신선식품의 특성상 상품의 중량에 3% 내외의 차이가 발생할 수 있습니다.</p>
                                <p class="sales-content-list-p">-가지의 꼭지부분의 색이 상품 이미지와는 다른 색깔일 수 있으나 정상상품입니다. </p>
                            </dd>
                        </dl>
                    </div>

                    <div class="shopping-basket-area">
                        <div class="product-selection-frame">
                            <dl class="product-selection">
                                <dt class="sales-content-list-child">상품선택</dt>
                                <div class="product-selection-detail-page">
                                    <div class="product-name"><span name="goodsselect">[KF365] 가지 2입</span></div>
                                    <span>적립제외상품</span>
                                    <div class="product-quantity-value">
                                        <div class="product-quantity">
                                            <button type="button" disabled aria-label="수량내리기" class="product-quantity-down"></button>
                                            <div name="goodscount">1</div>
                                            <button type="button" disabled aria-label="수량올리기" class="product-quantity-up"></button>
                                        </div>
                                        <div class="product-pay">
                                            <span>2,480원</span>
                                        </div>
                                    </div>
                                </div>
                            </dl>
                        </div>

                        <div class="total-product-amount">
                            <div class="total-product-amount-area">
                                <div class="total-pay">
                                    <span class="total-pay-title">총 상품금액 :</span>
                                    <span class="total-pay-value">2,480</span>
                                    <span class="total-pay-won">원</span>
                                </div>
                                <div class="login-accumulate">
                                    <span class="mark">적립</span>
                                    <span class="item-point-login">로그인 후, 적립 혜택 제공</span>                                    
                                </div>
                            </div>
                        </div>

                        <div class="put-in-shopping-cart">
                            <button type="button" class="heart-img">
                                <span>
                                    <img src="${contextPath}/mkurly/컬리이미지/기타/heart.svg" alt="하트">
                                </span>
                            </button>
                            <button type="button" class="bell-img">
                                <span>
                                    <img src="${contextPath}/mkurly/컬리이미지/기타/bell.svg" alt="종">
                                </span>
                            </button>
                            <div class="shopping-cart-btn">
                                <input type="submit" class="input-cart-btn" value="장바구니 담기">
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            </form>
            <nav class="product-information-sub-menu">
                <nav class="product-information-sub-menu-frame">
                    <div class="sub-menu-1">
                        <a href="#" class="sub-menu-a"><span>상품설명</span></a>
                    </div>
                    <div class="sub-menu-2">
                        <a href="#" class="sub-menu-a"><span>상세정보</span></a>
                    </div>
                    <div class="sub-menu-2">
                        <a href="#" class="sub-menu-a"><span>후기</span><span>(2)</span></a>
                    </div>
                    <div class="sub-menu-2">
                        <a href="#" class="sub-menu-a"><span>문의</span></a>
                    </div>
                </nav>
            </nav>

            <div class="product-description-frame">
                <div class="gaji-description">
                    <div class="gaji-description-1">
                        <div class="gaji-description-2">

                            <div class="gaji-intro">
                                <div class="gaji-pic">
                                    <img src="${contextPath}/mkurly/컬리이미지/가지-상세페이지/gaji (1).jpg" alt="가지">
                                </div>
                                <div class="gaji-context">
                                    <h3><small>활용도 높은 보라빛 채소</small>가지</h3>
                                    <p>늘 먹는 채소도 기본이 중요합니다. 없으면 허전한 필수 채소, 신선하게 담아가 보세요. 컬리는 제철에 가장 맛이 좋은 가지를 준비했어요. 길쭉하게 뻗은 몸통에 윤기가 흐르는 신선한 가지랍니다. 특히나 수분이 많은 채소라 시원한 느낌으로 즐기기에도 좋지요. 가지볶음이나 가지나물 등 친숙한 요리부터, 가지 튀김이나 라자냐같은 별미 요리를 펼쳐보세요. 약간의 쓴맛이 느껴진다면, 꼭지를 자른 뒤 옅은 소금물이나 식초물에 담갔다가 사용해도 좋을 거예요.</p>
                                </div>
                            </div>
    
                            <div class="gaji-point">
                                <h3><span>Kurly's Check Point</span></h3>
                                <div class="gaji-context">
                                    <div class="gaji-pic">
                                        <img src="${contextPath}/mkurly/컬리이미지/가지-상세페이지/gaji (2).jpg" alt="가지 성분">
                                    </div>
                                </div>
                            </div>
    
                            <div class="gaji-desc">
                                <div class="gaji-context">
                                    <div class="gaji-pic">
                                        <img src="${contextPath}/mkurly/컬리이미지/기타/gaji-ad.webp" alt="광고">
                                    </div>
                                </div>
                            </div>
    
                            <div class="gaji-tip">
                                <h3><span>Kurly’s Tip</span></h3>
                                <div class="tip-box">
                                    <div class="gaji-context">
                                        <p class="gaji-context-words"> <strong>보관법</strong> <b>・</b>물기를 제거한 가지를 키친타올로 감싼 후, 밀폐용기에 담아 냉장 보관하세요. 단, 가능한 한 이른 시일 내에 드셔야 맛과 식감을 지킬 수 있어요. </p>
                                        <p class="gaji-context-words"> <strong>세척법</strong> <b>・</b>까슬까슬한 꼭지 부분을 잘라내세요. 베이킹소다 등을 표면에 고루 뿌려준 뒤 흐르는 물로 세척하면 됩니다. <br> 
                                            <b>・</b>쓴맛이 느껴진다면, 꼭지를 잘라낸 뒤 옅은 소금물이나 식초물에 5분 정도 담갔다가 사용하세요. </p>
                                        <p class="gaji-context-words"> <strong>활용팁</strong> <b>・</b>가지를 살짝 익혀서 무치거나 절임을 만들어보세요. 특유의 촉촉하고 말랑한 식감 덕에 맛깔스러운 반찬이 완성됩니다.<br> 
                                            <b>・</b>먹기 좋게 썰어 바삭하게 튀겨내 보세요. 중화풍으로 양념을 입혀도 좋고, 탕수육처럼 새콤달콤한 소스를 뿌려 즐겨도 좋아요.<br> 
                                            <b>・</b>라따뚜이, 멜란자네 등 근사한 요리를 할 때에도 빼놓을 수 없겠지요. 얇게 썰어 면 대신 활용하기에도 알맞습니다. </p>                                   
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>

                <div class="gaji-detail">
                    <div class="gaji-detail-list1"><img src="${contextPath}/mkurly/컬리이미지/가지-상세페이지/gaji.jpg" alt="크기사진"></div>
                    
                    <div class="gaji-detail-list2">
                        <h3>상품고시정보</h3>
                        <ul class="detail-list-table">
                            <li class="detail-list-table-left">포장단위별 용량(중량), 수량, 크기</li>
                            <li class="detail-list-table-right">1봉 2개입</li>
                            <li class="detail-list-table-left">관련법상 표시사항</li>
                            <li class="detail-list-table-right">해당사항 없음</li>
                            <li class="detail-list-table-left">생산자, 수입품의 경우 수입자를 함께 표기</li>
                            <li class="detail-list-table-right">제품 별도 라벨 표기 참조</li>
                            <li class="detail-list-table-left">상품구성</li>
                            <li class="detail-list-table-right">상품설명 및 상품이미지 참조</li>
                            <li class="detail-list-table-left">농수산물의 원산지 표시에 관한 법률에 따른 원산지</li>
                            <li class="detail-list-table-right">국산</li>
                            <li class="detail-list-table-left">보관방법 또는 취급방법</li>
                            <li class="detail-list-table-right">냉장보관</li>
                            <li class="detail-list-table-left">제조연월일(포장일 또는 생산연도), 유통기한 또는 품질유지기한</li>
                            <li class="detail-list-table-right">농산물로 별도의 유통기한 없음ㅁ</li>
                            <li class="detail-list-table-left">소비자상담 관련 전화번호</li>
                            <li class="detail-list-table-right">마켓컬리 고객행복센터(1644-1107)</li>
                        </ul>
                    </div>

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

                <div class="inquiry-form-frame">
                    <div class="inquiry-form-area">
                        <div class="contect-us-btn">
                            <button><span>문의하기</span></button>
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
                                    
                                    <tr class="user-inquiry-post">
                                        <td class="user-inquiry-post-title">
                                            <div class="post-title">
                                                <span>비밀글입니다.</span>
                                                <span class="lock"><!--back img--></span>
                                            </div>
                                        </td>
                                        <td class="user-inquiry-post-auther">이*희</td>
                                        <td class="user-inquiry-post-created-date">2022.10.26</td>
                                        <td class="user-inquiry-post-status-clear">답변완료</td>
                                    </tr>

                                    <tr class="user-inquiry-post">
                                        <td class="user-inquiry-post-title">
                                            <div class="post-title">
                                                <span>비밀글입니다.</span>
                                                <span class="lock"></span>
                                            </div>
                                        </td>
                                        <td class="user-inquiry-post-auther">서*범</td>
                                        <td class="user-inquiry-post-created-date">2022.10.25</td>
                                        <td class="user-inquiry-post-status-clear">답변완료</td>
                                    </tr>
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

    <div class="sub-order-frame">
        <div class="sub-order-area">
            <button class="item-choice">
                <span>상품선택</span>
                <i id="icon" class="fa-solid fa-chevron-up"></i>
            </button>
            
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
                                <img src="${contextPath}/mkurly/컬리이미지/기타/heart.svg" alt="하트">
                            </span>
                        </button>
                        <button type="button" class="bell-img iconImg">
                            <span>
                                <img src="${contextPath}/mkurly/컬리이미지/기타/bell.svg" alt="종">
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
                        <a href="https://www.instagram.com/"><img src="${contextPath}/mkurly/컬리이미지/snsIcon/ico_instagram.webp" alt="인스타그램"></a>
                        <a href="https://ko-kr.facebook.com/"><img src="${contextPath}/mkurly/컬리이미지/snsIcon/ico_fb.webp" alt="페이스북"></a>
                        <a href="https://www.naver.com/"><img src="${contextPath}/mkurly/컬리이미지/snsIcon/ico_blog.webp" alt="네이버블로그"></a>
                        <a href="https://post.naver.com/"><img src="${contextPath}/mkurly/컬리이미지/snsIcon/ico_naverpost.webp" alt="네이버포스트"></a>
                        <a href="https://www.youtube.com/?hl=ko&gl=KR"><img src="${contextPath}/mkurly/컬리이미지/snsIcon/ico_youtube.webp" alt="유튜브"></a>
                    </div>
                </div>
            </div>
            <div class="footer-license">
                <div class="license-list">
                    <img src="${contextPath}/mkurly/컬리이미지/footerimg/logo_isms.svg" alt="쇼핑몰서비스 인증">
                    <p>
                        [인증범위] 마켓컬리 쇼핑몰 서비스 개발ㆍ운영<br>
                        (심사받지 않은 물리적 인프라 제외)<br>
                        [유효기간] 2022.10.30 ~ 3033.10.30
                    </p>
                </div>
                <div class="license-list">
                    <img src="${contextPath}/mkurly/컬리이미지/footerimg/logo_privacy.svg" alt="개인정보보호 인증">
                    <p>
                        개인정보보호 우수 웹사이트ㆍ<br>
                        개인정보처리시스템 인증 (ePRIVACY PLUS)
                    </p>
                </div>
                <div class="license-list">
                    <img src="${contextPath}/mkurly/컬리이미지/footerimg/logo_tosspayments.svg" alt="토스페이먼츠 인증">
                    <p>
                        토스페이먼츠 구매안전(에스크로)<br>
                        서비스를 이용하실 수 있습니다.
                    </p>
                </div>
                <div class="license-list">
                    <img src="${contextPath}/mkurly/컬리이미지/footerimg/logo_wooriBank.svg" alt="은행협업 인증">
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
    <script src="${contextPath}/mkurly/js/commen.js"></script>
</body>
</html>