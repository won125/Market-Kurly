window.onload=function(){
    var userId=document.querySelector("#id");
    var pw1=document.querySelector("#password");
    var pw2=document.querySelector("#confirmPassword");
    var bir=document.querySelector("#birth");
    userId.onchange=checkId;
    pw1.onchange=checkPw;
    pw2.onchange=comparePw;
    bir.onchange=checkBir
    //성별 라디오 박스
    $('.genderdivide span').click(function(){
        $('#agreement1').click('on'); 
        $('#agreement2').trigger('click'); 
    });
    
}