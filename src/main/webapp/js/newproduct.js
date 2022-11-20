$(document).ready(function(){
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

    $("#img3").show();
    $("#img4").hide();
    $("#img3").click(function(){
        $("#img3").hide();
        $("#img4").show();
    });
    $("#img4").click(function(){
        $("#img3").show();
        $("#img4").hide();
    });

    $("#img5").show();
    $("#img6").hide();
    $("#img5").click(function(){
        $("#img5").hide();
        $("#img6").show();
    });
    $("#img6").click(function(){
        $("#img5").show();
        $("#img6").hide();
    });

    $("#img7").show();
    $("#img8").hide();
    $("#img7").click(function(){
        $("#img7").hide();
        $("#img8").show();
    });
    $("#img8").click(function(){
        $("#img7").show();
        $("#img8").hide();
    });

    $("#img9").show();
    $("#img10").hide();
    $("#img9").click(function(){
        $("#img9").hide();
        $("#img10").show();
    });
    $("#img10").click(function(){
        $("#img9").show();
        $("#img10").hide();
    });

    $("#img11").show();
    $("#img12").hide();
    $("#img11").click(function(){
        $("#img11").hide();
        $("#img12").show();
    });
    $("#img12").click(function(){
        $("#img11").show();
        $("#img12").hide();
    });

    $("#img13").show();
    $("#img14").hide();
    $("#img13").click(function(){
        $("#img13").hide();
        $("#img14").show();
    });
    $("#img14").click(function(){
        $("#img13").show();
        $("#img14").hide();
    });

    $("#img15").show();
    $("#img16").hide();
    $("#img15").click(function(){
        $("#img15").hide();
        $("#img16").show();
    });
    $("#img16").click(function(){
        $("#img15").show();
        $("#img16").hide();
    });

    $("#img17").show();
    $("#img18").hide();
    $("#img17").click(function(){
        $("#img17").hide();
        $("#img18").show();
    });
    $("#img18").click(function(){
        $("#img17").show();
        $("#img18").hide();
    });

    $("#img19").show();
    $("#img20").hide();
    $("#img19").click(function(){
        $("#img19").hide();
        $("#img20").show();
    });
    $("#img20").click(function(){
        $("#img19").show();
        $("#img20").hide();
    });

    $("#img21").show();
    $("#img22").hide();
    $("#img21").click(function(){
        $("#img21").hide();
        $("#img22").show();
    });
    $("#img22").click(function(){
        $("#img21").show();
        $("#img22").hide();
    });

    $("#img23").show();
    $("#img24").hide();
    $("#img23").click(function(){
        $("#img23").hide();
        $("#img24").show();
    });
    $("#img24").click(function(){
        $("#img23").show();
        $("#img24").hide();
    });

    $("#img25").show();
    $("#img26").hide();
    $("#img25").click(function(){
        $("#img25").hide();
        $("#img26").show();
    });
    $("#img26").click(function(){
        $("#img25").show();
        $("#img26").hide();
    });

    $("#img27").show();
    $("#img28").hide();
    $("#img27").click(function(){
        $("#img27").hide();
        $("#img28").show();
    });
    $("#img28").click(function(){
        $("#img27").show();
        $("#img28").hide();
    });

    $("#img29").show();
    $("#img30").hide();
    $("#img29").click(function(){
        $("#img29").hide();
        $("#img30").show();
    });
    $("#img30").click(function(){
        $("#img29").show();
        $("#img30").hide();
    });

    $("#img31").show();
    $("#img32").hide();
    $("#img31").click(function(){
        $("#img31").hide();
        $("#img32").show();
    });
    $("#img32").click(function(){
        $("#img31").show();
        $("#img32").hide();
    });

    $("#img33").show();
    $("#img34").hide();
    $("#img33").click(function(){
        $("#img33").hide();
        $("#img34").show();
    });
    $("#img34").click(function(){
        $("#img33").show();
        $("#img34").hide();
    });
});
window.onload=function(){
    //가격 버튼
    $('#img17').click(function(){
        $("#img17").show();
        $("#img18").hide();
    });
    $('#img17').click(function(){
        $("#img19").show();
        $("#img20").hide();
    });
    $('#img17').click(function(){
        $("#img21").show();
        $("#img22").hide();
    });
    $('#img19').click(function(){
        $("#img17").show();
        $("#img18").hide();
    });
    $('#img19').click(function(){
        $("#img19").show();
        $("#img20").hide();
    });
    $('#img19').click(function(){
        $("#img21").show();
        $("#img22").hide();
    });
    $('#img21').click(function(){
        $("#img17").show();
        $("#img18").hide();
    });
    $('#img21').click(function(){
        $("#img19").show();
        $("#img20").hide();
    });
    $('#img21').click(function(){
        $("#img21").show();
        $("#img22").hide();
    });



    $(document).ready(function() {
        $("#imgOn1").hide();
        $("#imgOff1").show();
        $("#imgOn2").hide();
        $("#imgOff2").show();
        $("#imgOn3").hide();
        $("#imgOff3").show();
    });

    $('#imgOn1').click(function () {
        $("#imgOn1").hide();
        $("#imgOff1").show();

        $("#imgOn2").hide();
        $("#imgOff2").show();

        $("#imgOn3").hide();
        $("#imgOff3").show();
    });

    $('#imgOn2').click(function () {
        $("#imgOn2").hide();
        $("#imgOff2").show();

        $("#imgOn1").hide();
        $("#imgOff1").show();

        $("#imgOn3").hide();
        $("#imgOff3").show();
    });

    $('#imgOn3').click(function () {
        $("#imgOn3").hide();
        $("#imgOff3").show();

        $("#imgOn1").hide();
        $("#imgOff1").show();

        $("#imgOn2").hide();
        $("#imgOff2").show();
    });


    $('#imgOff1').click(function () {
        $("#imgOn1").show();
        $("#imgOff1").hide();

        $("#imgOn2").hide();
        $("#imgOff2").show();

        $("#imgOn3").hide();
        $("#imgOff3").show();
    });

    $('#imgOff2').click(function () {
        $("#imgOn2").show();
        $("#imgOff2").hide();

        $("#imgOn1").hide();
        $("#imgOff1").show();

        $("#imgOn3").hide();
        $("#imgOff3").show();
    });

    $('#imgOff3').click(function () {
        $("#imgOn3").show();
        $("#imgOff3").hide();

        $("#imgOn1").hide();
        $("#imgOff1").show();

        $("#imgOn2").hide();
        $("#imgOff2").show();
    });
}