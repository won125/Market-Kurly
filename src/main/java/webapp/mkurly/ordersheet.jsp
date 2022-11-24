<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<c:set var="pay" value="${payVO.payList}"/>
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
    <link rel="stylesheet" href="${contextPath}/mkurly/css/orderSheet.css">
    <link rel="stylesheet" href="${contextPath}/mkurly/css/commen.css">
    <link rel="stylesheet" href="${contextPath}/mkurly/css/normalize.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <script src="${contextPath}/mkurly/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/mkurly/js/orderSheet.js"></script>
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



    <main class="main">
        <div class="order-sheet-frame">
            <h2 class="order-sheet-text">주문서</h2>
            <div class="order-sheet-second-frame">                
                <div class="order-goods-title">
                    <h3>주문 상품</h3>
                    <button class="goods-list-up"><i class="fa-solid fa-chevron-up"></i></button>
                    <button class="goods-list-down"><i class="fa-solid fa-chevron-down"></i></button>
                </div>
					<c:choose>
					      <c:when test="${empty payList}">
									<tr>
										<td colspan="5" align="center">등록된 상품이 없습니다.</td>
									</tr>
								</c:when>
								<c:when test="${!empty payList}">
							<c:forEach var="pay" items="${payList}">
							
                <div class="order-goods-list">
                    <span class="goods-image"><img src="${contextPath}/mkurly/컬리이미지/${pay.goodsimage}"></span>
                    <span class="goods-text-frame">
                        <span class="goods text">${pay.goodsname}</span>
                    </span>
                    <span class="goods-count">${pay.goodscount}개</span>
                    <span class="goods-price">${pay.goodsprice* pay.goodscount}원</span>
                </div>
</c:forEach>
</c:when>
</c:choose>
				<c:choose>
				<c:when test="${!empty payList}">
					<c:forEach var="pay" items="${payList}">
                <div class="orderer-information-title">
                    <h3>주문자 정보</h3>
                </div>

                <div class="orderer-information-frame">
                    <div class="orderer-information-list-frame">
                        <span class="list-title">보내는 분</span>
                        <div class="orderer-frame">
                            <div class="orderer-text">${pay.name}</div>
                        </div>
                    </div>

                    <div class="orderer-information-list-frame">
                        <span class="list-title">휴대폰</span>
                        <div class="orderer-frame">
                            <div class="orderer-text">${pay.phone}</div>
                        </div>
                    </div>

                    <div class="orderer-information-list-frame">
                        <span class="list-title">이메일</span>
                        <div class="orderer-frame">${pay.email}
                            <div class="email-detail-text">
                                <p>이메일을 통해 주문처리과정을 보내드립니다.</p>
                                <p>정보 변경은 마이컬리>개인정보 수정 메뉴에서 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="shipping-information-frame">
                    <div class="shipping-information-title">
                        <h3>배송 정보</h3>
                        <div class="change-shipping-address">
                            <a href="#">배송지 변경 안내 <i class="fa-regular fa-circle-question"></i></a>
                        </div>
                    </div>

                    <div class="shipping-address-frame">
                        <div class="shipping-address">
                            <span class="shipping-address-title">배송지</span>
                            <div class="shipping-address-text">
                                <span>기본배송지</span>
                                <p>${pay.address} ${pay.detailaddress}</p>
                            </div>
                        </div>
                    </div>

                    <div class="more-information-frame">
                        <div class="more-information">
                            <span class="more-information-title">상세 정보</span>
                            <div class="more-information-text">
                                <p>받으실 분 정보를 입력해 주세요</p>
                                <div class="input-btn-frame">
                                    <button class="input-btn"><span>입력</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
</c:when>
</c:choose>
                <!-- 쿠폰 영역 -->
                <div class="calculation-payment-frame">
                    <div class="calculation-all-frame">
                        <div class="coupon-frame">
                            <h3>쿠폰 / 적립금</h3>
                        </div>

                        <div class="coupon-apply">
                            <span>쿠폰적용</span>
                            <div class="coupon-possession-frame">
                                <div class="coupon-possession">
                                    <button class="coupon-possession-btn">사용가능 쿠폰 0장 / 전체 0장<span><i class="fa-solid fa-chevron-down"></i></span></button>
                                </div>
                                <button class="coupon-use-inquiry-btn">
                                    <span>쿠폰 사용 문의 (카카오톡) <i class="fa-solid fa-chevron-right"></i></span>
                                </button>
                            </div>
                        </div>

                        <div class="reserves">
                            <span>적립금 적용</span>
                            <div class="reserves-frame">
                                <div class="remaining-deposit">
                                    <div class="reserves-input-frame">
                                        <div class="reserves-text">
                                            <input type="text" placeholder="0">
                                        </div>
                                    </div>
                                    <button class="reserves-use-btn">
                                        <span>모두사용</span>
                                    </button>
                                </div>
                                <div class="usable-points">
                                    사용가능 적립금<strong>0</strong>원
                                </div>
                                <div class="deposit-history">
                                    <p>적립금 내역: 마이컬리>적립금</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="method-of-payment-frame">
                            <h3>결제 수단</h3>                         
                            <label for="payment-selected" class="payment-lable">
                                <input type="checkbox" id="payment-selected" checked>
                                <img id="img3" src="${contextPath}/mkurly/컬리이미지/주문서페이지/다운로드.svg" alt="체크">
                                <img id="img4" src="${contextPath}/mkurly/컬리이미지/주문서페이지/다운로드 2.svg" alt="체크">
                                <span>선택한 결제 수단을 다음에도 사용</span>
                            </label>
                        </div>

                        <div class="method-of-payment-choice">
                            <span>결제수단 선택</span>
                            <div class="payment-btn-frame">
                                <div class="payment-btn-frame-one">
                                    <div class="payment-btn-frame-two">
                                        <div class="pay">
                                            <button type="button"><img src="${contextPath}/mkurly/컬리이미지/주문서페이지/pay.svg" alt="pay"></button>
                                        </div>
                                        <div class="payment-btn-area">
                                            <button type="button" class="payment-btn">
                                                <span>혜택</span>
                                                신용카드
                                            </button>
                                            <button type="button" class="payment-btn">
                                                <span>혜택</span>
                                                간편 결제
                                            </button>
                                            <button type="button" class="payment-btn">
                                                휴대폰
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <ul class="payment-information">
                            <li>※ 카카오페이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불되는 점 양해부탁드립니다.</li>
                            <li>※ 고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스 페이먼츠의 구매안전(에스크로) 서비스를 이용하실 수 있습니다.</li>
                        </ul>
                    </div>
                    
                    <!-- 화면 고정 -->
                    <div class="payment-pay-frame">
                        <div class="payment-pay-frame-one">
                            <div class="payment-pay-title">
                                <h3>결제 금액</h3>
                            </div>
                             <c:choose>
                    	<c:when test="${!empty payList}">
                    		<c:forEach var="pay" items="${payList}">
                            <div class="payment-pay">
                                <div class="order-amount">
                                    <div class="payment-pay-title1">주문금액</div>
                                    <div class="payment-pay-value">
                                        <span>${pay.totalprice}</span>
                                        <span>원</span>
                                    </div>
                                </div>
                                <div class="product-amount">
                                    <div class="payment-pay-title2">상품금액</div>
                                    <div class="payment-pay-value2">
                                        <span>${pay.totalprice}</span>
                                        <span>원</span>
                                    </div>
                                </div>
                                <div class="product-amount">
                                    <div class="payment-pay-title2">상품할인금액</div>
                                    <div class="payment-pay-value2">
                                        <span></span>
                                        <span>원</span>
                                    </div>
                                </div>
                                <div class="shipping-coupon-earn">
                                    <div class="payment-pay-title1">배송비</div>
                                    <div class="payment-pay-value">
                                        <span>0</span>
                                        <span>원</span>
                                    </div>
                                </div>
                                <div class="shipping-coupon-earn">
                                    <div class="payment-pay-title1">쿠폰할인</div>
                                    <div class="payment-pay-value">
                                        <span>0</span>
                                        <span>원</span>
                                    </div>
                                </div>
                                <div class="shipping-coupon-earn">
                                    <div class="payment-pay-title1">적립금사용</div>
                                    <div class="payment-pay-value">
                                        <span>0</span>
                                        <span>원</span>
                                    </div>
                                </div>
                                <div class="final-payment">
                                    <div class="payment-pay-title1">최종결제금액</div>
                                    <div class="payment-pay-value-last">
                                        <span>${pay.totalprice}</span>
                                        <span>원</span>
                                    </div>
                                </div>
	
                                <div class="deposit-received">
                                    <span>적립</span>구매 시<div>0원(5%)</div>
                                </div>
                            </div>
                              </c:forEach>
                        </c:when>
                        </c:choose>
                        </div>
                      
                    </div>
                </div>

                <div class="privacy-frame">
                    <h3>개인정보 수집/제공</h3>
                </div>

                <div class="privacy-btn-frame">
                    <label for="privacy-all-btn" class="privacy-lable">
                        <input type="checkbox" id="privacy-all-btn">
                        <img id="img1" src="${contextPath}/mkurly/컬리이미지/주문서페이지/다운로드.svg" alt="전체 선택">
                        <img id="img2" src="${contextPath}/mkurly/컬리이미지/주문서페이지/다운로드 2.svg" alt="전체 선택">
                        <span>결제 진행 필수 전체 동의</span>
                    </label>

                    <div class="privacy-child-btn-frame">
                        <p>
                            <label for="privacy-child-btn-one" class="privacy-child-lable">
                                <input type="chekbox" id="privacy-child-btn-one">
                                <img id="check1-1" class="ccheck" src="${contextPath}/mkurly/컬리이미지/주문서페이지/check.svg" alt="선택1">
                                <img id="check1-2" class="ccheck" src="${contextPath}/mkurly/컬리이미지/주문서페이지/no_check.svg" alt="선택1">
                            </label>
                            <span>(필수) 개인정보 수집∙이용 및 처리 동의</span>                                
                        </p>
                        <p>
                            <label for="privacy-child-btn-two" class="privacy-child-lable">
                                <input type="chekbox" id="privacy-child-btn-two">
                                <img id="check2-1" class="ccheck" src="${contextPath}/mkurly/컬리이미지/주문서페이지/check.svg" alt="선택1">
                                <img id="check2-2" class="ccheck" src="${contextPath}/mkurly/컬리이미지/주문서페이지/no_check.svg" alt="선택1">                                 
                            </label>
                            <span>(필수) 개인정보 제3자 제공 동의</span>  
                        </p>
                        <p>
                            <label for="privacy-child-btn-three" class="privacy-child-lable">
                                <input type="chekbox" id="privacy-child-btn-three">
                                <img id="check3-1" class="ccheck" src="${contextPath}/mkurly/컬리이미지/주문서페이지/check.svg" alt="선택1">
                                <img id="check3-2" class="ccheck" src="${contextPath}/mkurly/컬리이미지/주문서페이지/no_check.svg" alt="선택1">                                 
                            </label>
                            <span>(필수) 전자지급 결제대행 서비스 이용약관 동의</span>  
                        </p>
                    </div>
                </div>

                <p class="privacy-notice">
                    마켓컬리에서 판매되는 상품 중에는 마켓컬리에 입점한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다.<br>
                    마켓플레이스(오픈마켓) 상품의 경우 컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다.컬리는 해당 상품의 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.
                </p>

                <div class="payment-decision-frame">
                    <button class="payment-decision-btn">
                       <c:choose>
                    	<c:when test="${!empty payList}">
                    	<c:forEach var="pay" items="${payList}">
							 <span> ${pay.totalprice} 원 결제하기</span>
						</c:forEach>
                        </c:when>
                        </c:choose>	
                    </button>
                    <p class="payment-decision-notice">
                        [주문완료] 상태일 경우에만 주문 취소 가능합니다.<br>
                        미성년자가 결제 시 법정대리인이 그 거래를 취소할 수 있습니다.<br>
                        배송 불가 시, 결제수단으로 환불됩니다. 일부 또는 전체 상품이 품절 등의 사유로 배송 되지 못할 경우, 신속하게 환불해 드리겠습니다.<br>
                        카카오페이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불됩니다.
                    </p>
                </div>
            </div>
        </div>
    </main>



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
