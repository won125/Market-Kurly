<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>신상품</title>
    <link rel="stylesheet" href="${contextPath}/mkurly/css/normalize.css">
    <link rel="stylesheet" href="${contextPath}/mkurly/css/newproduct.css">
    <script src="${contextPath}/mkurly/js/jquery-3.6.0.min.js"></script>
    <script src="${contextPath}/mkurly/js/newproduct.js"></script>
</head>
<body>
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
                              <a href="${contextPath}/member/adminpage.do" id="userNameHover">
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
                            <a href="${contextPath}/member"><img src="${contextPath}/mkurly/컬리이미지/kulry-logo/asd-removebg-preview-removebg-preview.png" alt="메인로고" class="main-logo"></a>
                            <a href="${contextPath}/member"><button class="first-market-button">마켓컬리</button></a>
                            <a href="${contextPath}/member"><button class="second-market-button">뷰티컬리</button></a>
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
    <!--신상품 영역 시작-->
    
    <div class="allnewproductform">
        <div id="container" class="mainnewproductform">
            <div class="headbanner">
                <a href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/2022/0207/new_products">
                    <img src="${contextPath}/mkurly/컬리이미지/배너-신상품/headbanner.webp" alt="배너이미지" class="bannerimg">
                </a>
            </div>
            <h3 class="newproducttext">신상품</h3>
            <!-- 상품 검색기능 -->
            <form action="${contextPath}/good1/detailsearch.do">
            <input type="text"  name=keyword value="">
            <button  type="submit">검색</button>
            </form>
            <!-- 상품검색기능 -->
            <div class="mainnewproductspace">
                <div class="newproductbar">
                    <div class="newproductbarcheck">
                        <span class="newproductbarchecktext">필터</span>
                        <button class="resetbutton">
                            <svg width="12" height="12" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13.78 3.96303C12.504 2.16973 10.4086 1 8.04 1C4.15192 1 1 4.15192 1 8.04C1 11.9281 4.15192 15.08 8.04 15.08C11.9281 15.08 15.08 11.9281 15.08 8.04" stroke="#ddd" stroke-width="1.6" stroke-linecap="square" stroke-linejoin="round"></path><path d="M14.4933 1L14.4933 4.52H10.9733" stroke="#ddd" stroke-width="1.6" stroke-linecap="square" stroke-linejoin="round"></path>
                                <path d="M13.78 3.96303C12.504 2.16973 10.4086 1 8.04 1C4.15192 1 1 4.15192 1 8.04C1 11.9281 4.15192 15.08 8.04 15.08C11.9281 15.08 15.08 11.9281 15.08 8.04" stroke="#ddd" stroke-width="1.6" stroke-linecap="square" stroke-linejoin="round"></path>
                                <path d="M14.4933 1L14.4933 4.52H10.9733" stroke="#ddd" stroke-width="1.6" stroke-linecap="square" stroke-linejoin="round"></path>
                            </svg>
                            <span class="resettext">초기화</span>
                        </button>
                    </div>
                    <div class="allcategorybar">
                        <div class="categorybar">
                            <button class="categorybutton">
                                <div class="categorytext">카테고리</div>
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryhiddenbutton" style="transform: rotate(0deg);">
                                    <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                </svg>
                            </button>
                            <ul class="dividecategory" style="max-height: 100vh;opacity: 1;">
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton" onclick=location.href="${contextPath}/good1/search.do?keyword=채소";>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img1">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img2">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/search.do?keyword=채소"><span class="categorylisttext">채소</span></a>
                                        <span class="categorylistnumber">6</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img3">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img4">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/search.do?keyword=고기"><span class="categorylisttext">정육</span></a>
                                        <span class="categorylistnumber">6</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img5">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img6">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/search.do?keyword=반찬"><span class="categorylisttext">반찬</span></a>
                                        <span class="categorylistnumber">6</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img7">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img8">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/search.do?keyword=우유"><span class="categorylisttext">유제품</span></a>
                                        <span class="categorylistnumber">6</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img9">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img10">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/search.do?keyword=술"><span class="categorylisttext">주류</span></a>
                                        <span class="categorylistnumber">6</span>
                                    </a>
                                </li>
                                <button class="allcategorylistbutton">카테고리 더보기
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryopenbutton">
                                        <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                    </svg> 
                                </button>
                            </ul>
                        </div>
                        <div class="categorybar">
                            <button class="categorybutton">
                                <div class="categorytext">브랜드</div>
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryhiddenbutton" style="transform: rotate(0deg);">
                                    <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                </svg>
                            </button>
                            <ul class="dividecategory" style="max-height: 100vh;opacity: 1;">
                                <menu class="categorymenu">
                                    <li class="categoryarray">
                                        <button class="categoryarraybutton">가나다 순</button>
                                    </li>
                                    <li class="categoryarray">
                                        <button class="categoryarraysbutton">상품 많은 순</button>
                                    </li>
                                </menu>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img11">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img12">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/detailsearch.do?keyword=프레시지"><span class="categorylisttext">프레시지</span></a><!--채소-->
                                        <span class="categorylistnumber">2</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img13">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img14">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/detailsearch.do?keyword=슈퍼키친"><span class="categorylisttext">슈퍼키친</span></a><!--정육-->
                                        <span class="categorylistnumber">2</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img15">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img16">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/detailsearch.do?keyword=파스퇴르"><span class="categorylisttext">파스퇴르</span></a><!--반찬-->
                                        <span class="categorylistnumber">2</span>
                                    </a>
                                </li>
                                <button class="allcategorylistbutton">브랜드 더보기
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryopenbutton">
                                        <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                    </svg>
                                </button>
                            </ul>
                        </div>
                        <div class="categorybar">
                            <button class="categorybutton">
                                <div class="categorytext">가격</div>
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryhiddenbutton" style="transform: rotate(0deg);">
                                    <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                </svg>
                            </button>
                            <ul class="dividecategory" style="max-height: 100vh;opacity: 1;">
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img17">
                                                <path d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z" fill="#fff" stroke="#ddd"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img18">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M12 17C14.7614 17 17 14.7614 17 12C17 9.23858 14.7614 7 12 7C9.23858 7 7 9.23858 7 12C7 14.7614 9.23858 17 12 17Z" fill="#fff"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/pricesearch.do?keyword=7800"><span class="categorylisttext">7,800원 미만</span></a>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img19">
                                                <path d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z" fill="#fff" stroke="#ddd"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img20">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M12 17C14.7614 17 17 14.7614 17 12C17 9.23858 14.7614 7 12 7C9.23858 7 7 9.23858 7 12C7 14.7614 9.23858 17 12 17Z" fill="#fff"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/pricesearch.do?keyword=17800"><span class="categorylisttext">17,800원 미만</span></a>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img21">
                                                <path d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z" fill="#fff" stroke="#ddd"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img22">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M12 17C14.7614 17 17 14.7614 17 12C17 9.23858 14.7614 7 12 7C9.23858 7 7 9.23858 7 12C7 14.7614 9.23858 17 12 17Z" fill="#fff"></path>
                                            </svg>
                                        </button>
                                        <a href="${contextPath}/good1/pricesearch.do?keyword=27800"><span class="categorylisttext">27,800원 미만</span></a>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="categorybar">
                            <button class="categorybutton">
                                <div class="categorytext">혜택</div>
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryhiddenbutton" style="transform: rotate(0deg);">
                                    <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                </svg>
                            </button>
                            <ul class="dividecategory" style="max-height: 100vh;opacity: 1;">
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img23">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img24">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <span class="categorylisttext">할인상품</span>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img25">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img26">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <span class="categorylisttext">한정수량</span>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img27">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img28">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <span class="categorylisttext">단독특가</span>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="categorybar">
                            <button class="categorybutton">
                                <div class="categorytext">유형</div>
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryhiddenbutton" style="transform: rotate(0deg);">
                                    <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                </svg>
                            </button>
                            <ul class="dividecategory" style="max-height: 100vh;opacity: 1;">
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img29">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img30">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <span class="categorylisttext">Kurly Only</span>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img31">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img32">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <span class="categorylisttext">선물하기</span>
                                        <span class="categorylistnumber">3</span>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="categorybar">
                            <button class="categorybutton">
                                <div class="categorytext">특정상품 제외</div>
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999" xmlns="http://www.w3.org/2000/svg" class="categoryhiddenbutton" style="transform: rotate(0deg);">
                                    <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                </svg>
                            </button>
                            <ul class="dividecategory" style="max-height: 100vh;opacity: 1;">
                                <li class="categorylist">
                                    <a href="javascript: return false;" class="categorylistlink">
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img33">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img34">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <span class="categorylisttext">반려동물 상품</span>
                                        <span class="categorylistnumber">0</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div class="newproductarea">
                    <div class="newproductareacheck">
                        <div class="newproductareanumber">총 30건</div>
                        <ul class="allnewproductcheck">
                            <li class="newproductcheck">
                                <a href="" class="categorychecklink">추천순</a>
                                <div class="detailcategorycheck">
                                    <svg width="14" height="20" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M6.9932 0.700195C8.73506 0.700195 10.3116 1.40557 11.4528 2.54565C12.5943 3.68594 13.3002 5.26111 13.3002 7.0002C13.3002 8.73928 12.5943 10.3145 11.4528 11.4547C10.3116 12.5948 8.73506 13.3002 6.9932 13.3002C5.25512 13.3002 3.68233 12.595 2.54387 11.4554C1.40457 10.315 0.700195 8.73952 0.700195 7.0002C0.700195 5.26087 1.40457 3.68541 2.54387 2.54497C3.68233 1.40537 5.25512 0.700195 6.9932 0.700195Z" stroke="#ccc" stroke-width="1.4"></path>
                                        <path d="M4.5 5.21081H5.77027C5.81351 4.55135 6.26216 4.12973 6.95946 4.12973C7.64054 4.12973 8.09459 4.53514 8.09459 5.0973C8.09459 5.58784 7.90383 5.86944 7.35576 6.22524L7.1973 6.32432C6.45135 6.76216 6.13784 7.24865 6.18649 8.05946L6.19189 8.42703H7.44595V8.11892C7.44595 7.58378 7.64595 7.30811 8.35405 6.89189C9.08919 6.45405 9.5 5.87568 9.5 5.04865C9.5 3.85405 8.51081 3 7.02973 3C5.42432 3 4.54324 3.92973 4.5 5.21081ZM6.87838 11.0054C6.33784 11.0054 5.98108 10.6649 5.98108 10.1459C5.98108 9.62162 6.33784 9.28108 6.87838 9.28108C7.42973 9.28108 7.77568 9.62162 7.77568 10.1459C7.77568 10.6649 7.42973 11.0054 6.87838 11.0054Z" fill="#ccc"></path>
                                    </svg>
                                    <div class="detailcategorycheckcontent">소비자 인기도(판매량, 판매금액, 조회수 등), 상품 출시일, 수요 적합성, 상품 운영상 필요 등을 종합적으로 고려한 순서입니다.</div>
                                </div>
                            </li>
                            
                            <li class="newproductcheck"> 
                                <a href="" class="newproductchecklink">신상품순</a>
                            </li>
                            <li class="newproductcheck">
                                <a href="" class="categorychecklink">판매량순</a>
                            </li>
                            <li class="newproductcheck">
                                <a href="" class="categorychecklink">혜택순</a>
                            </li>
                            <li class="newproductcheck">
                                <a href="${contextPath}/good1/lowsearch.do" class="categorychecklink">낮은 가격순</a>
                            </li>
                          	<li class="newproductcheck">
                                <a href="${contextPath}/good1/highsearch.do" class="categorychecklink">높은 가격순</a>
                            </li>
                        </ul>
                    </div>
                    <div class="allnewproductcontents">
		<c:forEach var="findlist" items="${findlist}">
			<!--1번물품-->
			<div class="newproductcontent">
				<div class="realnewproductarea">
					<div class="realnewproduct">
						<!--goodsselect-->
						<a
							href="${contextPath}/good1/goodsdetail.do?goodscode=${findlist.goodscode}&goodsprice=${findlist.goodsprice}&goodstitle=${findlist.goodstitle}">
							<img alt="" src="${contextPath}/${findlist.goodsimage}"></a>
						<div>
							<button class="shoppingbasketbutton">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="newproductexplan">
					<span class="deliveryarea"> <span class="deliverytext">샛별배송</span>
					</span>
					<!--goodstitle-->
					<span class="deliveryinfo">${findlist.goodstitle}</span>

					<div class="newproductprice">
						<div></div>
						<span class="newproductpricetext"> ${findlist.goodsprice}<!--goodsprice-->
							<span class="won">원</span>
						</span>
					</div>
					<!--goodsinfo-->
					${findlist.goodsinfo}
				</div>
				<input type="hidden" value="${findlist.goodsselectname}"> <input
					type="hidden" value="${findlist.goodscode}"> <input
					type="hidden" value="${findlist.goodsrate}">
			</div>
		</c:forEach>





                    </div>    
                    <div class="pagespace">
                        <a class="pagenumber">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC" alt="이전 페이지로 이동하기 아이콘">
                        </a>
                        <a class="pagenumberone">1</a>
                        <a class="pagenumber">2</a>
                        <a class="pagenumber">3</a>
                        <a class="pagenumber">4</a>
                        <a class="pagenumber">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg==" alt="다음 페이지로 이동하기 아이콘">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--신상품 영역 종료-->
</body>
</html>         