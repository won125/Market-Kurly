$(document).ready(function(){
    /*웹페이지 열었을 때*/
    $("#img3").show();
    $("#img4").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#img3").click(function(){
        $("#img3").hide();
        $("#img4").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#img4").click(function(){
        $("#img3").show();
        $("#img4").hide();
    });


    /*웹페이지 열었을 때*/
    $("#img1").show();
    $("#img2").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#img1").click(function(){
        $("#img1").hide();
        $("#img2").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#img2").click(function(){
        $("#img1").show();
        $("#img2").hide();
    });


    /*웹페이지 열었을 때*/
    $("#check1-1").show();
    $("#check1-2").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#check1-1").click(function(){
        $("#check1-1").hide();
        $("#check1-2").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#check1-2").click(function(){
        $("#check1-1").show();
        $("#check1-2").hide();
    });


    /*웹페이지 열었을 때*/
    $("#check2-1").show();
    $("#check2-2").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#check2-1").click(function(){
        $("#check2-1").hide();
        $("#check2-2").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#check2-2").click(function(){
        $("#check2-1").show();
        $("#check2-2").hide();
    });


    /*웹페이지 열었을 때*/
    $("#check3-1").show();
    $("#check3-2").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#check3-1").click(function(){
        $("#check3-1").hide();
        $("#check3-2").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#check3-2").click(function(){
        $("#check3-1").show();
        $("#check3-2").hide();
    });



    /*웹페이지 열었을 때*/
    $("#img1").show();
    $("#img2").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#img1").click(function(){
        $("#img1").hide();
        $("#img2").show();
        $("#check1-1").hide();
        $("#check1-2").show();
        $("#check2-1").hide();
        $("#check2-2").show();
        $("#check3-1").hide();
        $("#check3-2").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#img2").click(function(){
        $("#img1").show();
        $("#img2").hide();
        $("#check1-1").show();
        $("#check1-2").hide();
        $("#check2-1").show();
        $("#check2-2").hide();
        $("#check3-1").show();
        $("#check3-2").hide();
    });
    $(".ccheck").click(function(){
        if ($("#check1-2").css("display") == "none" && $("#check2-2").css("display") == "none" && $("#check3-2").css("display") == "none") {
            $("#img1").show();
            $("#img2").hide();
        }else {
            $("#img1").hide();
            $("#img2").show();
        }
    });
});

$(document).ready(function(){
    var jbOffset = $('.payment-pay-frame-one').offset();
    $(window).scroll(function(){
        if($(document).scrollTop() >jbOffset.top-115.99){
            $('.payment-pay-frame-one').addClass('payment-pay-frame-onetop');
        }else{
            $('.payment-pay-frame-one').removeClass('payment-pay-frame-onetop');
        }
    });
}, 3000);