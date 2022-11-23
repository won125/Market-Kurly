$(document).ready(function(){
    /*웹페이지 열었을 때*/
    $(".checkview").hide();
    $(".checkviewno").show();

   
    $(".checkviewno").on("click",function(){
        
        $(".checkviewno").show();
        $(".checkview").hide();
        var idx = $(".checkviewno").index(this);
        $(".checkview").eq(idx).show();
        $(".checkviewno").eq(idx).hide();
    });
});