// 고객 센터 호버 이벤트
$("#serviceCenterHover").mouseover(function(){
    $(".top-serviceCenter-child").css({"display":"block","zIndex":100});
  });

$("#serviceCenterHover").mouseout(function(){
    $(".top-serviceCenter-child").css("display", "none");
});

$(".top-serviceCenter-child").mouseover(function(){
    $(".top-serviceCenter-child").css({"display":"block","zIndex":100});
});

$(".top-serviceCenter-child").mouseout(function(){
    $(".top-serviceCenter-child").css("display", "none");
});

// 카테고리 호버 이벤트

$(".category").mouseover(function(){
    $(".category-low-menu").css({"display":"block","zIndex":100});
});

$(".category").mouseout(function(){
    $(".category-low-menu").css("display", "none");
});

$(".category-low-menu").mouseover(function(){
    $(".category-low-menu").css({"display":"block","zIndex":100});
});

$(".category-low-menu").mouseout(function(){
    $(".category-low-menu").css("display", "none");
});

// 카테고리 하위메뉴 호버시 이벤트
$(".category-low-menu li").eq(0).mouseover(function(){
    $(".category-low-menu li").eq(0).css("color","rgb(95, 0, 128)");
});
$(".category-low-menu li").eq(0).mouseout(function(){
    $(".category-low-menu li").eq(0).css("color","rgb(30, 30, 30)");
});

$(".category-low-menu li").eq(1).mouseover(function(){
    $(".category-low-menu li").eq(1).css("color","rgb(95, 0, 128)");
});
$(".category-low-menu li").eq(1).mouseout(function(){
    $(".category-low-menu li").eq(1).css("color","rgb(30, 30, 30)");
});

$(".category-low-menu li").eq(2).mouseover(function(){
    $(".category-low-menu li").eq(2).css("color","rgb(95, 0, 128)");
});
$(".category-low-menu li").eq(2).mouseout(function(){
    $(".category-low-menu li").eq(2).css("color","rgb(30, 30, 30)");
});

$(".category-low-menu li").eq(3).mouseover(function(){
    $(".category-low-menu li").eq(3).css("color","rgb(95, 0, 128)");
});
$(".category-low-menu li").eq(3).mouseout(function(){
    $(".category-low-menu li").eq(3).css("color","rgb(30, 30, 30)");
});

$(".category-low-menu li").eq(4).mouseover(function(){
    $(".category-low-menu li").eq(4).css("color","rgb(95, 0, 128)");
});
$(".category-low-menu li").eq(4).mouseout(function(){
    $(".category-low-menu li").eq(4).css("color","rgb(30, 30, 30)");
});