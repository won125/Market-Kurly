<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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
    <!--신상품 영역 시작-->
    <div class="allnewproductform">
        <div id="container" class="mainnewproductform">
            <div class="headbanner">
                <a href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/2022/0207/new_products">
                    <img src="${contextPath}/mkurly/컬리이미지/배너-신상품/headbanner.webp" alt="배너이미지" class="bannerimg">
                </a>
            </div>
            <h3 class="newproducttext">신상품</h3>
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
                                        <button class="categorylistbutton">
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img1">
                                                <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" id="img2">
                                                <path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path>
                                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </button>
                                        <span class="categorylisttext">채소</span>
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
                                        <span class="categorylisttext">정육</span>
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
                                        <span class="categorylisttext">반찬</span>
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
                                        <span class="categorylisttext">유제품</span>
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
                                        <span class="categorylisttext">주류</span>
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
                                        <span class="categorylisttext">프레시지</span><!--채소-->
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
                                        <span class="categorylisttext">슈퍼키친</span><!--정육-->
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
                                        <span class="categorylisttext">파스퇴르</span><!--반찬-->
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
                                        <span class="categorylisttext">7,800원 미만</span>
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
                                        <span class="categorylisttext">17,800원 미만</span>
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
                                        <span class="categorylisttext">27,800원 미만</span>
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
                                <a href="" class="categorychecklink">낮은 가격순</a>
                            </li>
                            <li class="newproductcheck">
                                <a href="" class="categorychecklink">높은 가격순</a>
                            </li>
                        </ul>
                    </div>
                    <div class="allnewproductcontents">
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <a href="${contextPath}/mkurly/productDetailPage.jsp"><img src="${contextPath}/mkurly/컬리이미지/채소/vegetable6.jpg" alt="상품이미지"></a>
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[KF365] 가지 2입</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        2,480
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">믿고 먹을 수 있는 상품을 합리적인 가격에, KF365</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/채소/vegetable1.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">참타리버섯 350g</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        2,190
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">다채롭게 요리하는 만능버섯</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/채소/vegetable2.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">흙연근 600g</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">4,090<span class="won">원</span></span>
                                    
                                </div>
                                <p class="newproductinfo">다양하게 요리하는 통연근</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/채소/vegetable3.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">영주 햇 생강 1kg 박스</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        12,900
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">알차게 여문 신선한 생강</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/채소/vegetable4.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">GAP 오이 2입</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        2,690
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">싱그러움 가득한 수분 가득채소</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/채소/vegetable5.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">경기 시금치 250g</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        3,990
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">두루 사용되는 국민 엽채류</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/정육/meat1.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[소들녘] 로약 살치살 250g</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        19,900
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">100g당 가격: 7,960원</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/정육/meat2.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[하이포크] 한돈 바로구이 꽃살 500g</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        12,9270
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">100g당 판매가: 2,780원</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/정육/meat3.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">무항생제 1등급 암퇘지 삼겹 2종 600g (냉장)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        19,200
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">100g당 판매가: 3,200원</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/정육/meat4.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">무항생제 1등급 한돈 다짐육 300g*2pk</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        7,000
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">100g당 판매가: 1,167원</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/정육/meat5.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[kim's butcher] 호주산 부채살 돌돌말이 600g(냉동)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        17,990
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">100g당 판매가: 2,998원</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/정육/meat6.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[빌라드서울] 맛있는 닭갈비</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        8,900
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">기름에 구워 즐기는 이색 닭갈비</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/반찬/sideDish1.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[몬스터곱창] 소곱창 떡볶이</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        10,900
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">곱이 가득한 곱창을 넉넉히 올린</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/반찬/sideDish2.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[프레시지] 짬뽕 순두부찌개</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        10,900
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">얼큰한 국물과 고소한 순두부</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/반찬/sideDish3.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[프레시지] 밀푀유나베</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        16,900
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">꽃처럼 피어나는 전골 요리</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/반찬/sideDish4.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[슈퍼키친] 무청시래기된장지짐</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        4,300
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">구수한 맛이 쏙 배어든</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/반찬/sideDish5.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[슈퍼키친] 비엔나소시지야채볶음</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        3,500
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">모두가 좋아하는 인기 반찬</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/반찬/sideDish6.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[시화당] 알감자조림</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        5,000
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">귀여운 알감자를 졸여 만든</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/유제품/milk1.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[파스퇴르] 바른목장 요구르트(100mL X 5개)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        2,500
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">어린이를 위한 까다로운 발효유</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/유제품/milk2.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[파스퇴르] 위 편한 하루(150mL X 4개)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        5,480
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">엄선한 4가지 재료를 더한 발효유</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/유제품/milk3.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[널담] 비건유 오리지널 190ml X 24입</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        15,920
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">부담 없이 마시기 좋은 식물성 음료</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/유제품/milk4.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[후디스] 그릭 요거튼 대용량 450g 2종</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        5,400
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">넉넉하게 즐기는 그릭 요거트</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/유제품/milk5.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[올레길] 제주 모짜렐라 스트링 치즈(100g X 2입)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        8,400
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">결 따라 찢어서 먹는 간편 치즈</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/유제품/milk6.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[상하목장] 마시는 유기농 요구르트(100mL X 5개)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        2,450
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">정직하게 만든 유기농 요구르트</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/주류/alcohol1.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[전통주] 서주 감자술 13도 300ml(감자술 13도)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        4,500
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">평창 감자술</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/주류/alcohol2.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[전통주] 문배술 25도 375ml(문배술 25도)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        10,450
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">곡물이 이뤄낸 그윽한 배향</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/주류/alcohol3.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[전통주] 조은술세종 우도 땅콩 전통주 6도 750ml(우도 땅콩 전통주)</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        3,610
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">선조들의 지혜가 담긴 전통주</p><!--복순도가 과하주-->
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/주류/alcohol4.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[전통주] 술샘 3종(술샘 16(375ml))</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        12,000
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">풍성하게 살아나는 자연의 맛과 향</p>
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/주류/alcohol5.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[전통주] 고도리술(1병 40도(375ml))</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        32,000
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">수채화처럼 번지는 맑은 단 맛</p><!--C막걸리 시그니처나인-->
                            </div>
                        </div>
                        <div class="newproductcontent">
                            <div class="realnewproductarea">
                                <div class="realnewproduct">
                                    <img src="${contextPath}/mkurly/컬리이미지/주류/alcohol6.jpg" alt="상품이미지">
                                    <div>
                                        <button class="shoppingbasketbutton">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="장바구니 아이콘">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="newproductexplan">
                                <span class="deliveryarea">
                                    <span class="deliverytext">샛별배송</span>
                                </span>
                                <span class="deliveryinfo">[전통주] 술소리 지리산 강쇠(1병 13도(375ml))</span>
                                <div class="newproductprice">
                                    <div></div>
                                    <span class="newproductpricetext">
                                        2,800
                                        <span class="won">원</span>
                                    </span>
                                </div>
                                <p class="newproductinfo">국내산 쌀이 선사하는 맑은 향기</p><!--복순도가 약주-->
                            </div>
                        </div>
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