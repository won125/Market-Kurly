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

}     

