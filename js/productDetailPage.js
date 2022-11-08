$(document).ready(function(){
    $('.sub-order-frame').hide();
    $(".item-choice").css("top", "-48px");
    $(".sub-order-area div").hide();

    $('.item-choice').click(function(){
        if($("#icon").hasClass("fa-solid fa-chevron-down")) {
            $("#icon").removeClass("fa-solid fa-chevron-down");
            $("#icon").addClass("fa-solid fa-chevron-up");
        }else {
            $("#icon").removeClass("fa-solid fa-chevron-up");
            $("#icon").addClass("fa-solid fa-chevron-down");
        }

        if ($(".sub-order-area div").css("display") == "none") { 
            $(".sub-order-area div").show(); //display :none 일떄
        } else {
            $(".sub-order-area div").hide();  //display :block 일떄
        }

        if ($(".item-choice").css("top") == "-48px") {
            $(".item-choice").css("top", "-68px");
        }else {
            $(".item-choice").css("top", "-48px");
        }
        
    });

    $(window).scroll(function(){
        if($(document).scrollTop() >400){
            $('.sub-order-frame').show();
        }else{
            $('.sub-order-frame').hide();
        }
    });

    $('.change-list-btn').click(function(){
        if($("#change-icon").hasClass("fa-solid fa-chevron-up")) {
            $("#change-icon").removeClass("fa-solid fa-chevron-up");
            $("#change-icon").addClass("fa-solid fa-chevron-down");
        }else {
            $("#change-icon").removeClass("fa-solid fa-chevron-down");
            $("#change-icon").addClass("fa-solid fa-chevron-up");
        }

        if ($(".exchange-refund-frame").css("display") == "none") { 
            $(".exchange-refund-frame").show(); //display :none 일떄
        } else {
            $(".exchange-refund-frame").hide();  //display :block 일떄
        }
    });

    $('.withdraw-order-btn').click(function(){
        if($("#icon-change").hasClass("fa-solid fa-chevron-up")) {
            $("#icon-change").removeClass("fa-solid fa-chevron-up");
            $("#icon-change").addClass("fa-solid fa-chevron-down");
        }else {
            $("#icon-change").removeClass("fa-solid fa-chevron-down");
            $("#icon-change").addClass("fa-solid fa-chevron-up");
        }

        if ($(".order-cancellation").css("display") == "none") { 
            $(".order-cancellation").show(); //display :none 일떄
        } else {
            $(".order-cancellation").hide();  //display :block 일떄
        }

        if ($(".cancel-payment-authorization").css("display") == "none") { 
            $(".cancel-payment-authorization").show(); //display :none 일떄
        } else {
            $(".cancel-payment-authorization").hide();  //display :block 일떄
        }
    });
});