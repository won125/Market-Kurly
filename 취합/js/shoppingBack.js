$(document).ready(function(){
    var jbOffset = $('.shipping-address-and-price-area').offset();
    $(window).scroll(function(){
        if($(document).scrollTop() >jbOffset.top-115.99){
            $('.shipping-address-and-price-area').addClass('shipping-address-and-price-area-onetop');
        }else{
            $('.shipping-address-and-price-area').removeClass('shipping-address-and-price-area-onetop');
        }
    });
}, 3000);

$(document).ready(function(){
    /*웹페이지 열었을 때*/
    $("#img1").show();
    $("#img2").hide();
    $("#check").show();
    $("#check2").hide();
    $("#img3").show();
    $("#img4").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#img1").click(function(){
        $("#img1").hide();
        $("#img2").show();
        $("#check").hide();
        $("#check2").show();
        $("#img3").hide();
        $("#img4").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#img2").click(function(){
        $("#img1").show();
        $("#img2").hide();
        $("#check").show();
        $("#check2").hide();
        $("#img3").show();
        $("#img4").hide();
    });

    $("#img3").click(function(){
        $("#img1").hide();
        $("#img2").show();
        $("#check").hide();
        $("#check2").show();
        $("#img3").hide();
        $("#img4").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#img4").click(function(){
        $("#img1").show();
        $("#img2").hide();
        $("#check").show();
        $("#check2").hide();
        $("#img3").show();
        $("#img4").hide();
    });

    $("#check").click(function(){
        $("#check").hide();
        $("#check2").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#check2").click(function(){
        $("#check").show();
        $("#check2").hide();
    });

    $(".ccheck").click(function(){
        if ($("#check").css("display") == "none") {
            $("#img1").hide();
            $("#img2").show();
            $("#img3").hide();
            $("#img4").show();
        }else {
            $("#img1").show();
            $("#img2").hide();
            $("#img3").show();
            $("#img4").hide();
        }
    });
});
$(document).ready(function(){
    let countNum=Number(document.querySelector(".product-quantity-count text"));
    $(".product-quantity-up").click(function(){
        if (countNum<99) {
            countNum+=1;
        }
        $(".product-quantity-count").text(countNum);
    });

    $(".product-quantity-down").click(function(){
        if (countNum>1) {
            countNum-=1;
        }
        $(".product-quantity-count").text(countNum);
    });
});
