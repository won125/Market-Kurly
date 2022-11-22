<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> <%-- 상대경로 현제 문서 위치를 기준으로 경로를 인식하는 방법--%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마켓컬리</title>
<link rel="stylesheet" href="${contextPath}/css/commen.css">
<link rel="stylesheet" href="${contextPath}/css/index.css">
<link rel="stylesheet" href="${contextPath}/css/index2.css">
<link rel="stylesheet" href="${contextPath}/css/normalize.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<script src="${contextPath}/js/jquery-3.6.1.min.js"></script>
</head>
<body>
<c:choose>
	<c:when test="${msg == 'updateMember'}">
		<script type="text/javascript">
			alert("회원정보수정 완료");
		</script>
	</c:when>
	<c:when test="${msg == 'addMember'}">
		<script type="text/javascript">
			alert("회원가입 완료");
		</script>
	</c:when>
	<c:when test="${result == 1}">
		<script type="text/javascript">
			alert("그동안 마켓컬리를 이용해주셔서 감사합니다.");
		</script>
	</c:when>
	<c:when test="${result == 0}">
		<script type="text/javascript">
			alert("회원 탈퇴 에러!!");
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
	                <c:choose>
	                	<c:when test="${sessionID eq null }">
	                		<div class="top-memberService">
		                        <a href="${contextPath}/member/join.do">회원가입</a>
		                        <div> | </div>
		                        <a href="${contextPath}/member/login.do">로그인</a>
		                        <div> | </div>
		                        <a href="${contextPath}/service/servicecenter.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
		                    </div>
	                	</c:when>
	                	<c:when test="${sessionID ne null and sessionID ne 'admin'}">
	                		<div class="top-memberService2" style="display: flex">
	                			<a></a>
		                        <a href="${contextPath}/member/mypage.do" id="userNameHover">
		                            <span class="login-user-tier">일반</span>${sessionID} 님
		                            <i class="fa-solid fa-caret-down"></i>
		                        </a>
		                        <div class="login-user-menu">
		                            <div class="login-user-low-menu"><a href="#">주문 내역</a></div>
		                            <div class="login-user-low-menu"><a href="#">선물 내역</a></div>
		                            <div class="login-user-low-menu"><a href="${contextPath}/member/wishList.do">찜한 상품</a></div>
		                            <div class="login-user-low-menu"><a href="${contextPath}/member/shippingList.do">배송지 관리</a></div>
		                            <div class="login-user-low-menu"><a href="#">상품 후기</a></div>
		                            <div class="login-user-low-menu"><a href="#">상품 문의</a></div>
		                            <div class="login-user-low-menu"><a href="#">적립금</a></div>
		                            <div class="login-user-low-menu"><a href="#">쿠폰</a></div>
		                            <div class="login-user-low-menu"><a href="${contextPath}/member/modMember.do?id=${sessionID}">개인 정보 수정</a></div>
		                            <div class="login-user-low-menu"><a href="#">나의 컬리 스타일</a></div>
		                            <div class="login-user-low-menu"><a href="${contextPath}/member/logout.do">로그아웃</a></div>
		                        </div>
		                        <div> | </div>
		                        <a href="${contextPath}/service/servicecenter.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
		                    </div>
	                	</c:when>
	                	<c:when test="${sessionID eq 'admin'}">
	                		<div class="top-memberService2">
		                        <a href="${contextPath}/member/adminpage.do" id="userNameHover">
		                            <span class="login-user-tier">관리자</span>
		                            <i class="fa-solid fa-caret-down"></i>
		                        </a>
		                        <div class="login-user-menu">
		                            <div class="login-user-low-menu"><a href="${contextPath}/member/managerPost.do">공지 관리</a></div>
		                            <div class="login-user-low-menu"><a href="${contextPath}/member/managerMember.do">회원 관리</a></div>
		                            <div class="login-user-low-menu"><a href="${contextPath}/member/logout.do">로그아웃</a></div>
		                        </div>
		                        <div> | </div>
		                        <a href="${contextPath}/service/servicecenter.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
		                    </div>
	                	</c:when>
	                </c:choose>
                    <div class="top-serviceCenter-child">
                        <li><a href="${contextPath}/service/servicecenter.do"></a>공지사항</li>
                        <li><a href="${contextPath}/service/"></a>자주하는 질문</li>
                        <li><a href="#"></a>1:1 문의</li>
                        <li><a href="#"></a>대량주문 문의</li>
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
                            <li><a href="${contextPath}/service/specialoffer.do">특가/혜택</a></li>                        
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
 <!--메인페이지 영역 시작-->
    <div class="allmainform">
        <div class="allindexform">
            <div class="mainform"></div>
            <div class="indexform">
                <div class="mainspace">
                    <div class="mainbanner">
                        <div class="bannerswiper slider-1 topgogo">
                            <div class="bannerswiperwrapper slides">
                                <div class="swiperslide image-n1 img-fl"></div>
                                <div class="image-n2 img-fl"></div>
                                <div class="image-n3 img-fl"></div>
                                <div class="image-n4 img-fl"></div>
                                <div class="image-n5 img-fl"></div>
                                <div class="image-n6 img-fl"></div>
                                <div class="image-n7 img-fl"></div>
                                <div class="image-n8 img-fl"></div>
                            </div>

                            <!-- 컨트롤 버튼 -->
                            <div class="page-btns" style="display: none;">
                                <div class="active"></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>

                             <!-- 좌우 컨트롤 패널-->
                            <div class="side-btns">
                                <div>
                                    <span class="bannerleftbutton" style="transform: rotate(180deg);"><i class="fa-solid fa-chevron-left"  style="opacity: 0;"></i></span>
                                </div>
                                <div>
                                    <span class="bannerrightbutton"style="transform: rotate(0deg);"><i class="fa-solid fa-chevron-right" style="opacity: 0;"></i></span>
                                </div>
                            </div>

                        </div>
                        <!--<button class="bannerleftbutton" direction="left"></button>
                        <button class="bannerrightbutton" direction="right"></button>-->
                        <div class="numberbutton"><span class="change-number">1</span>&nbsp;/ 8</div>
                    </div>
                </div>
                <div class="mainspace">
                    <div class="mainarea">
                        <div class="maintitlearea">
                            <div class="maintextarea">
                                <span class="maintext">이 상품 어때요?</span>
                            </div>
                        </div>
                        <div class="allimg">
                            <div class="mainswiper">
                                <div class="mainswiperwrapper">
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (1).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[삼립] 전통밤만쥬(30개입)</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">6,500
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (2).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">엔비사과 1.3kg (5입)</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">14,900
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (3).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[워커힐] 명월관 갈비탕</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">17,000
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (4).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[도제] 타마고산도</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">4,500
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div class="imgdivide">
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (5).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">미국산 스위트 사파이어 포도 500g</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">7,630
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (6).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[도제] 가츠산도</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">4,500
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (7).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[퀴네] 프렌치 드레싱</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">2,700
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (8).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[스타벅스] by 네스프레소 호환 캡슐</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">6,990
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (9).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[미자언니네] 한우버섯불고기 (냉동)</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">12,600
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (10).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[도제] 통새우산도</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">5,000
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (11).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">한뿌리 수삼 45g</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">3,690
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (12).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[목우촌] 주부9단 슬라이스햄(샌드위치햄) 100gX2개</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">3,080
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (13).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[Kurly's] 샌드위치용 달걀감자 샐러드 120g</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">2,000
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (14).jpg" alt="상품">
                                                <div>
                                                    <button class="saleprice cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[쿠엔즈버킷] 참기름 2종</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">23,000
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (15).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[블랑제리코팡] 잠봉뵈르 샌드위치</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">5,300
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/이 상품 어때요/how (16).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[안정현의 솜씨와 정성] 두텁떡</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">10,000
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--<button class="mainrightbutton"></button>-->
                        </div>
                        <!--<button class="mainleftbutton"></button>-->
                        <div class="slide-test">
                            <button class="mainleftbutton"></button>
                            <button class="mainrightbutton"></button>
                        </div>
                    </div>
                </div>
                <div class="mainspace">
                    <div class="mainarea">
                        <img src="${contextPath}/컬리이미지/메인페이지/광고.jpg" alt="광고">
                    </div>
                </div>
                <div class="mainspace">
                    <div class="mainarea">
                        <div class="maintitlearea">
                            <div class="clickmaintextarea">
                                <span class="maintext">일본 미식 여행</span>
                            </div>
                            <p class="maintextinfo">일본 음식에 목마른 분들의 추천!</p>
                        </div>
                        <div class="allimg">
                            <div class="allimgarea">
                                <div class="otherswiperwrapper" style="transform: translate3d(0px, 0px, 0px);">
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/일본미식여행/japan (1).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[시마바라] 텐노베 소면</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">4,500
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/일본미식여행/japan (2).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[닌교초 이마한] 스키야키 소스</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">12,000
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/일본미식여행/japan (3).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[김구원선생] 냉동 국산 유부 슬라이스 250g</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">6,950
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/일본미식여행/japan (4).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[도쿄밀크치즈팩토리] 치즈 쿠키 세트 2종</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">12,600
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mainspace">
                    <div class="mainarea">
                        <div class="maintitlearea">
                            <div class="maintextarea">
                                <span class="maintext">오늘의 카테고리 랭킹</span>
                            </div>
                        </div>
                        <ul class="clickbuttonarea">
                            <li>
                                <button type="button" class="selected clickbutton">채소 TOP50</button>
                            </li>
                            <li>
                                <button type="button" class="clickbutton">정육 TOP50</button>
                            </li>
                            <li>
                                <button type="button" class="clickbutton">반찬 TOP50</button>
                            </li>
                            <li>
                                <button type="button" class="clickbutton">유제품 TOP50</button>
                            </li>
                            <li>
                                <button type="button" class="clickbutton">주류 TOP50</button>
                            </li>
                        </ul>
                        <div class="imgspace">
                            <div class="allimg">
                                <div class="allimgarea">
                                    <div class="otherswiperwrapper" style="transform: translate3d(0px, 0px, 0px);">
                                        <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                            <div class="imgdivide">
                                                <div class="imgcontainer imgcontainerhidden">
                                                    <a href="productDetailPage.html"><img src="${contextPath}/컬리이미지/채소/vegetable6.jpg" alt="상품이미지"></a>
                                                    <div>
                                                        <button class="cartbutton cartbuttonposition">
                                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="productinfo productinfoarea">
                                                    <h3 class="productname">[KF365] 가지 2입</h3>
                                                    <div class="pricespace">
                                                        <div class="pricearea">
                                                            <div>
                                                                <span class="saleprice pricetext">2,480
                                                                    <span> 원</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                            <div class="imgdivide">
                                                <div class="imgcontainer imgcontainerhidden">
                                                    <img src="${contextPath}/컬리이미지/채소/vegetable4.jpg" alt="상품">
                                                    <div>
                                                        <button class="cartbutton cartbuttonposition">
                                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="productinfo productinfoarea">
                                                    <h3 class="productname">GAP 오이 2입</h3>
                                                    <div class="pricespace">
                                                        <div class="pricearea">
                                                            <div>
                                                                <span class="saleprice pricetext">2,690
                                                                    <span> 원</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                            <div class="imgdivide">
                                                <div class="imgcontainer imgcontainerhidden">
                                                    <img src="${contextPath}/컬리이미지/채소/vegetable2.jpg" alt="상품">
                                                    <div>
                                                        <button class="cartbutton cartbuttonposition">
                                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="productinfo productinfoarea">
                                                    <h3 class="productname">흙연근 600g</h3>
                                                    <div class="pricespace">
                                                        <div class="pricearea">
                                                            <div>
                                                                <span class="saleprice pricetext">4,090
                                                                    <span> 원</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                            <div class="imgdivide">
                                                <div class="imgcontainer imgcontainerhidden">
                                                    <img src="${contextPath}/컬리이미지/채소/vegetable1.jpg" alt="상품">
                                                    <div>
                                                        <button class="cartbutton cartbuttonposition">
                                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="productinfo productinfoarea">
                                                    <h3 class="productname">참타리버섯 350g</h3>
                                                    <div class="pricespace">
                                                        <div class="pricearea">
                                                            <div>
                                                                <span class="saleprice pricetext">2,190
                                                                    <span> 원</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="allclick">
                            <span class="allclicktext">채소 TOP50 전체보기</span>
                        </div>
                    </div>
                </div>
                <div class="mainspace">
                    <div class="mainarea">
                        <div class="maintitlearea">
                            <div class="clickmaintextarea">
                                <span class="maintext">컬리 추천 샌드위치</span>
                            </div>
                        </div>
                        <div class="allimg">
                            <div class="allimgarea">
                                <div class="otherswiperwrapper" style="transform: translate3d(0px, 0px, 0px);">
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/컬리 추천 샌드위치/send (1).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[치엔바오] 대만 샌드위치 6종 (2번들)</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">4,500
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/컬리 추천 샌드위치/send (2).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[에브리데이] 크로와상 샌드위치 5종</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">4,300
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/컬리 추천 샌드위치/send (3).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[단백질과자점] 단백질바 4종</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">3,500
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 249px; margin-right: 18px;">
                                        <div class="imgdivide">
                                            <div class="imgcontainer imgcontainerhidden">
                                                <img src="${contextPath}/컬리이미지/메인페이지/컬리 추천 샌드위치/send (4).jpg" alt="상품">
                                                <div>
                                                    <button class="cartbutton cartbuttonposition">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="productinfo productinfoarea">
                                                <h3 class="productname">[홍루이젠] 대만 샌드위치 3개입 3종</h3>
                                                <div class="pricespace">
                                                    <div class="pricearea">
                                                        <span class="saleprice pricetext">7,000
                                                            <span> 원</span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="area">
                    <div class="view">
                        <div class="rail-area">
                            <div class="kurly-rail">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                            </div>
                            <div class="kurly-rail">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                            </div>
                            <div class="kurly-rail">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                                <img src="${contextPath}/컬리이미지/메인페이지/movekurly 복사.png" alt="이미지레일">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mainspace">
                    <div class="mainarea">
                        <div class="maintitlearea">
                            <div class="maintextarea">
                                <span class="maintext">인스타그램 고객 후기</span>
                            </div>
                            <p class="maintextinfo">더 많은 고객 후기가 궁금하다면?</p>
                        </div>
                        <div class="allimg">
                            <div class="allimgarea">
                                <div class="otherswiperwrapper" style="transform: translate3d(0px, 0px, 0px);">
                                    <div class="swiperslide" style="width: 160px; margin-right: 18px;">
                                        <div class="instaimgarea">
                                            <img class="instaimg" src="${contextPath}/컬리이미지/insta/insta1.jpg" alt="인스타그램 리뷰 사진">
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 160px; margin-right: 18px;">
                                        <div class="instaimgarea">
                                            <img class="instaimg" src="${contextPath}/컬리이미지/insta/insta2.jpg" alt="인스타그램 리뷰 사진">
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 160px; margin-right: 18px;">
                                        <div class="instaimgarea">
                                            <img class="instaimg" src="${contextPath}/컬리이미지/insta/insta3.jpg" alt="인스타그램 리뷰 사진">
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 160px; margin-right: 18px;">
                                        <div class="instaimgarea">
                                            <img class="instaimg" src="${contextPath}/컬리이미지/insta/insta4.jpg" alt="인스타그램 리뷰 사진">
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 160px; margin-right: 18px;">
                                        <div class="instaimgarea">
                                            <img class="instaimg" src="${contextPath}/컬리이미지/insta/insta5.jpg" alt="인스타그램 리뷰 사진">
                                        </div>
                                    </div>
                                    <div class="swiperslide" style="width: 160px; margin-right: 18px;">
                                        <div class="instaimgarea">
                                            <img class="instaimg" src="${contextPath}/컬리이미지/insta/insta6.jpg" alt="인스타그램 리뷰 사진">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="linkinfo">
                            <p>더 많은 고객 후기가 궁금하다면?</p>
                            <a href="https://www.instagram.com/marketkurly_regram" target="_blank" rel="noopener noreferrer">@marketkurly_regram</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--메인페이지 영역 종료-->
    <!-- 프로젝트 작성 영역 end -->
    <footer>
        <div class="footer-top-frame">
            <div class="footer-serviceCenter-inquiry">
                <div class="top-left-footer">
                    <a href="${contextPath}/service/servicecenter.do">
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
    <script src="${contextPath}/js/index.js"></script>
</body>
</html>