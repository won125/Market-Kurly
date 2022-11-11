window.onload=function(){
    //성별 라디오 버튼
    $('.dividespace .circle').click(function(){
        $('.circle').removeClass("changebigcircle");
        $(this).addClass("changebigcircle");
    });
    $('.seconddividespace .bigcircle').click(function(){
        $('.bigcircle').removeClass("changebigcircle");
        $(this).addClass("changebigcircle");
    });
    $('.circle').trigger('click');

    //추가입력사항 라디오 버튼
    $(function(){
        $('.bigcircle').click(function(){
             $('.hiddeninput').show(); //함수에 attr로 연결해서 그림넣을 수 있음. 3초 동안 그림보여주고, 그림 바뀜
        });
    });

     //체크박스 
     $(function(){
        $('input[name=agreement]').click(function(){
            if($('input[name=agreement]').prop('checked')){
                $('input[name=agree]').prop('checked',true);
            }else{
                $('input[name=agree]').prop('checked',false);
            }
        });
        $('.agreement1').click(function(){
            if($('input[name=agree]:checked').length==7){
                $('.agreement').prop('checked',true);
            }else{
                $('.agreement').prop('checked',false);
            }
        });
        $('.agreement2').click(function(){
            if($('input[name=agree]:checked').length==7){
                $('.agreement').prop('checked',true);
            }else{
                $('.agreement').prop('checked',false);
            }
        });
        $('.agreement3').click(function(){
            if($('input[name=agree]:checked').length==7){
                $('.agreement').prop('checked',true);
            }else{
                $('.agreement').prop('checked',false);
            }
        });
        $('.agreement4').click(function(){
            if($('input[name=agree]:checked').length==7){
                $('.agreement').prop('checked',true);
            }else{
                $('.agreement').prop('checked',false);
            }
        });
        $('.agreement5').click(function(){
            if($('input[name=agree]:checked').length==7){
                $('.agreement').prop('checked',true);
            }else{
                $('.agreement').prop('checked',false);
            }
        });
        $('.agreement6').click(function(){
            if($('input[name=agree]:checked').length==7){
                $('.agreement').prop('checked',true);
            }else{
                $('.agreement').prop('checked',false);
            }
        });
        $('.agreement7').click(function(){
            if($('input[name=agree]:checked').length==7){
                $('.agreement').prop('checked',true);
            }else{
                $('.agreement').prop('checked',false);
            }
        });
    });

}     
function div_show(selectList) {
    var obj1 = document.getElementById("js_pay_type1"); 
    var obj2 = document.getElementById("js_pay_type2"); 

    if( selectList == "0" ) { 
        obj1.style.display = "block";    
        obj2.style.display = "none";
    } else if( selectList == "1" ) { 
        obj1.style.display = "none";    
        obj2.style.display = "block";
    }
}

