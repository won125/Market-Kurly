<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<c:set var="cart" value="${cart.cartList}"/>
	
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
    <link rel="stylesheet" href="${contextPath}/mkurly/css/shoppingBack.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="${contextPath}/mkurly/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/mkurly/js/shoppingBack.js"></script>
    
</head>
<body>
  <header>
        <div class="top-ad">
            <p>지금 가입하고 인기상품 <strong>100원</strong>에 받아가세요!</p>
        </div>
        <!-- 헤더영역시작 -->
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
                              <a href="${contextPath}/help/helpList.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
                          </div>
                      </c:when>
                      <c:when test="${sessionID ne null and sessionID ne 'admin'}">
                         <div class="top-memberService2" style="display: flex">
                            <a></a>
                               <a href="${contextPath}/member/wishList.do" id="userNameHover">
                                  <span class="login-user-tier">일반</span>${sessionID} 님
                                  <i class="fa-solid fa-caret-down"></i>
                              </a>
                              <div class="login-user-menu">
                                  <div class="login-user-low-menu"><a href="#">주문 내역</a></div>
                                  <div class="login-user-low-menu"><a href="#">선물 내역</a></div>
                                  <div class="login-user-low-menu"><a href="${contextPath}/member/wishList.do">찜한 상품</a></div>
                                  <div class="login-user-low-menu"><a href="${contextPath}/member/shipping.do">배송지 관리</a></div>
                                  <div class="login-user-low-menu"><a href="#">상품 후기</a></div>
                                  <div class="login-user-low-menu"><a href="#">상품 문의</a></div>
                                  <div class="login-user-low-menu"><a href="#">적립금</a></div>
                                  <div class="login-user-low-menu"><a href="#">쿠폰</a></div>
                                  <div class="login-user-low-menu"><a href="${contextPath}/member/modMember.do?id=${sessionID}">개인 정보 수정</a></div>
                                  <div class="login-user-low-menu"><a href="#">나의 컬리 스타일</a></div>
                                  <div class="login-user-low-menu"><a href="${contextPath}/member/logout.do">로그아웃</a></div>
                              </div>
                              <div> | </div>
                              <a href="${contextPath}/help/helpList.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
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
                              <a href="${contextPath}/help/helpList.do" id="serviceCenterHover">고객센터<i class="fa-solid fa-caret-down"></i></a>
                          </div>
                      </c:when>
                   </c:choose>
	
                    <div class="top-serviceCenter-child">
                        <li><a href="${contextPath}/help">공지사항</a></li>
                        <li><a href="${contextPath}/mostqna">자주하는 질문</a></li>
                        <li>1:1 문의</li>
                        <li>대량주문 문의</li>
                    </div>

                    <div class="top-logo-search-icon-frame">
                        <div class="top-logo-search-icon">
                            <a href="${contextPath}/member/"><img src="${contextPath}/mkurly/컬리이미지/kulry-logo/asd-removebg-preview-removebg-preview.png" alt="메인로고" class="main-logo"></a>
                            <a href="${contextPath}/member/"><button class="first-market-button">마켓컬리</button></a>
                            <a href="${contextPath}/member/"><button class="second-market-button">뷰티컬리</button></a>
                            <div class="top-search-frame">
                                <input class="top-search" type="text" placeholder="검색어를 입력해주세요"></input>
                                <div class="search-icon">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </div>
                            </div>

                            <div class="icon-menu">
                                <i class="fa-solid fa-location-dot"></i>
                                <a href="${contextPath}/member/wishList.do"><i class="fa-regular fa-heart"></i></a>
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

	<form method="get" name="cartselect" action="${contextPath}/pay/listPay.do">
    <main class="shopping-back-main">
        <h2 class="shopping-back-title">장바구니</h2>
        <div class="shopping-back-frame">
            <div class="item-list-frame">
                <div class="item-all-choice-delete-frame">
                    <div class="item-all-choice-delete-area">
                        <label class="check-btn check">
                            <input type="checkbox" class="check-btn-input" id="allcheck" name="checkall">
                            <span class="img1 ico" id="checkv"></span>
                            <span class="allselect">전체선택 (1/1)</span>
                        </label>
                        <span class="division"></span>
                        <button class="delete-btn" >선택삭제</button>
                    </div>                    
                </div>
   
                <div class="shopping-back-list-area">
                    <div>
                        <ul class="itemlist">
                            <c:choose>
					        	<c:when test="${empty cartList}">
									<tr>
										<td colspan="5" align="center">등록된 상품이 없습니다.</td>
									</tr>
								</c:when>
								<c:when test="${!empty cartList}">
							<c:forEach var="cart" items="${cartList}">
							
                            <li class="item">
                                <label class="item-btn-area check">
                                    <input type="checkbox" class="item-btn-input" name="onecheck" value="${cart.goodscode}">
                                    <span class="img1 ico" id="cimg"></span>
                                </label>
                                <a href="productDetailPage.html">
                                    <span class="list-img"><img id="cartlimg" src="${contextPath}/mkurly/컬리이미지/${cart.goodsimage}" alt=""></span>
                                </a>
                                <div class="item-code">
                                    <p class="item-code-name">${cart.goodsname}</p>
                                </div>
 	 
                                <div class="count-btn">
                                    <button type="button" aria-label="수량내리기" class="product-quantity-down"></button>
                                    <div class="product-quantity-count"><input type="number" name="goodscount" class="gcount1" id="gcount" value="${cart.goodscount}"></div>
                                    <button type="button" aria-label="수량올리기" class="product-quantity-up"></button>
                                </div>

                                <div class="item-pay">
	                                <input type="hidden" id="priceinput" name="goodsprice" class="pinput"  value="${cart.goodsprice}">
	                                 <div id="price123"><input type="text" id="priceinput1" name="gooodspirce1" readonly="readonly" class="pinput1" value=""></div>원
                                </div>
                                <a href="${contextPath}/cart/delCart.do?goodscode=${cart.goodscode}"><button class="easy-delete-btn" type="button"><span><img src="${contextPath}/mkurly/컬리이미지/기타/deleteX.svg"></span></button></a>
                       
                            </li>
                             </c:forEach>
                        </c:when>
                        </c:choose>	
                        </ul>
                       
                    </div>
                </div>
		
				
                 <div class="item-all-choice-delete-frame">
                    <div class="item-all-choice-delete-area">
                        <label class="check-btn check">
                            <input type="checkbox" class="check-btn-input" id="allcheck" name="checkall" >
                            <span class="img1 ico" id="checkv"></span>
                            <span class="allselect">전체선택 (1/1)</span>
                        </label>
                        <span class="division"></span>
                        <a href="${contextPath}/cart/delCartList.do}"><button type="button" class="delete-btn">선택삭제</button></a>
                    </div>                    
                </div>
            </div>
            
            <div class="shipping-address-and-price-frame">
                <div class="shipping-address-and-price-area">
                    <div class="user-address-area">
                        <h3 class="user-address-title"><i class="fa-solid fa-location-dot"></i>배송지</h3>
                        <div class="user-address">
                            <p class="address">  이천시 아리역로 1</p>
                            <div class="shipping-time-area">
                                <span>낮배송</span>
                            </div>
                            <button class="shipping-address-change-btn" type="button">
                                <span>배송지 변경</span>
                            </button>
                        </div>
                    </div>
                    <div class="amount-of-payment-area">
                        <div class="item-price">
                            <span class="price-title">상품금액</span>
                            <span class="price"><input type="text" id="tprice" class="wprice" readonly="readonly" value=""><span>원</span></span>
                        </div>
                        <div class="other-price">
                            <span class="price-title">상품할인금액</span>
                            <span class="price">0<span>원</span></span>
                        </div>
                        <div class="other-price">
                            <span class="price-title">배송비</span>
                            <span class="price">0<span>원</span></span>
                        </div>
                        <div class="all-price">
                            <span class="price-title">결제예정금액</span>
                            <span class="total-price"><input type="text" name="totalprice" readonly="readonly" class="tprice1"><span>원</span></span>
                        </div>
                        <div class="point-accumulate">
                            <span class="accumulate-mark">적립</span>최대
                            <strong>0원 적립</strong>
                        </div>
                    </div>
                    <div class="user-order-area">
                        <input type="submit" class="user-order-btn" value="주문하기">
                        <ul class="user-order-precautions">
                            <li class="order-precautions">쿠폰/적립금은 주문서에서 사용 가능합니다</li>
                            <li class="order-precautions">[주문완료] 상태일 경우에만 주문 취소 가능합니다.</li>
                            <li class="order-precautions">[마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소하실 수 있습니다.</li>
                            <li class="order-precautions">쿠폰, 적립금 사용 금액을 제외한 실 결제 금액 기준으로 최종 산정됩니다.</li>
                            <li class="order-precautions">상품별로 적립금 지급 기준이 다를 수 있습니다. (상품 상세 페이지에서 확인 가능합니다)</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </main>
    </form>
    
    


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