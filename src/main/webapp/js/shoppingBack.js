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
    $(".img1").show();
    $(".img2").hide();
    $(".check").show();
    $(".check2").hide();

    $(".img1").click(function(){
        $(".img1").hide();
        $(".img2").show();
        $(".check").hide();
        $(".check2").show();
    });

    $(".img2").click(function(){
        $(".img1").show();
        $(".img2").hide();
        $(".check").show();
        $(".check2").hide();
    });

    $(".check").on("click",function(){
        var idx = $(".check").index(this);
        $(".check").eq(idx).hide();
        $(".check2").eq(idx).show();
        if($($(".check").eq(idx)).css("display")=="none") {
            $(".img1").hide();
            $(".img2").show();
        }
    });

    $(".check2").on("click",function(){
        var idx = $(".check2").index(this);
        $(".check2").eq(idx).hide();
        $(".check").eq(idx).show();
    });

    

});

//체크박스 
$(function(){
    $('input[name=allCheck]').click(function(){
        if($('input[name=allCheck]').prop('checked')){
            $('input[name=listCheck]').prop('checked',true);
        }else{
            $('input[name=listCheck]').prop('checked',false);
        }
    });
    $('.listInputCheck1').click(function(){
        if($('input[name=listCheck]:checked').length==2){
            $('.allCheck').prop('checked',true);
        }else{
            $('.allCheck').prop('checked',false);
        }
    });
    $('.listInputCheck2').click(function(){
        if($('input[name=listCheck]:checked').length==2){
            $('.allCheck').prop('checked',true);
        }else{
            $('.allCheck').prop('checked',false);
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
