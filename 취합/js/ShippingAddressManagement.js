$(document).ready(function(){
    /*웹페이지 열었을 때*/
    $("#checkview").show();
    $("#checkviewno").hide();

    /*img1을 클릭했을 때 img2를 보여줌*/
    $("#checkview").click(function(){
        $("#checkview").hide();
        $("#checkviewno").show();
    });

    /*img2를 클릭했을 때 img1을 보여줌*/
    $("#checkviewno").click(function(){
        $("#checkview").show();
        $("#checkviewno").hide();
    });
});