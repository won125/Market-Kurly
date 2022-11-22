$(function(){
    var index=0;
    moveSlider(index);
    //좌측 버튼 이벤트
    $('.mainleftbutton').click(function(){
            index--;
            moveSlider(index);
    });
    //우측 버튼 이벤트
    $('.mainrightbutton').click(function(){    
            index++;
            moveSlider(index);
    });
    //이미지 슬라이더 구현 함수
    function moveSlider(index){
        if(index<3 && index>0){
            $('.mainrightbutton').fadeIn(500);
            $('.mainleftbutton').fadeIn(500);
        }

        if(index==3){
            $('.mainrightbutton').fadeOut(500);
        }

        if(index==0){
            $('.mainleftbutton').fadeOut(500);
        }

        $('.mainswiper').animate({
            left: -(index*1065)
        },'slow');
    }
}); 

$(function(){
    $(".bannerswiper").mouseover(function(){
        $(".bannerleftbutton").css({"opacity":1, "transition":"all 0.5s ease-in-out 0s"});
    });


    $(".bannerswiper").mouseout(function(){
        $(".bannerleftbutton").css({"opacity":0, "transition":"all 0.5s ease-in-out 0s"});
    });

    $(".bannerswiper").mouseover(function(){
        $(".bannerrightbutton").css({"opacity":1, "transition":"all 0.5s ease-in-out 0s"});
    });


    $(".bannerswiper").mouseout(function(){
        $(".bannerrightbutton").css({"opacity":0, "transition":"all 0.5s ease-in-out 0s"});
    });
    
    $(".bannerleftbutton").mouseover(function(){
        $(".bannerleftbutton").css({"opacity":1, "transition":"all 0.5s ease-in-out 0s"});
        $(".bannerrightbutton").css({"opacity":1, "transition":"all 0.5s ease-in-out 0s"});
    });


    $(".bannerleftbutton").mouseout(function(){
        $(".bannerleftbutton").css({"opacity":0, "transition":"all 0.5s ease-in-out 0s"});
    });

    $(".bannerrightbutton").mouseover(function(){
        $(".bannerrightbutton").css({"opacity":1, "transition":"all 0.5s ease-in-out 0s"});
        $(".bannerleftbutton").css({"opacity":1, "transition":"all 0.5s ease-in-out 0s"});
    });


    $(".bannerrightbutton").mouseout(function(){
        $(".bannerrightbutton").css({"opacity":0, "transition":"all 0.5s ease-in-out 0s"});
    });
});

$('.slider-1 > .slides > div').eq(0).addClass('active');
        
// 기존 버튼형 슬라이더
$('.slider-1 > .page-btns > div').click(function(){
    var $this = $(this);
    var index = $this.index();
    
    $this.addClass('active');
    $this.siblings('.active').removeClass('active');
    
    var $slider = $this.parent().parent();
    
    var $current = $slider.find(' > .slides > div.active');
    
    var $post = $slider.find(' > .slides > div').eq(index);
    
    $current.removeClass('active');
    $post.addClass('active');
    $(".change-number").text(index+1);
});

// 좌/우 버튼 추가 슬라이더
$('.slider-1 > .side-btns > div').click(function(){
    var $this = $(this);
    var $slider = $this.closest('.slider-1');
    
    var index = $this.index();
    var isLeft = index == 0;
    
    var $current = $slider.find(' > .page-btns > div.active');
    var $post;
    
    if ( isLeft ){
        $post = $current.prev();
    }
    else {
        $post = $current.next();
    };
    
    if ( $post.length == 0 ){
        if ( isLeft ){
            $post = $slider.find(' > .page-btns > div:last-child');
        }
        else {
            $post = $slider.find(' > .page-btns > div:first-child');
        }
    };
    
    $post.click();
});

setInterval(function(){
    $('.slider-1 > .side-btns > div').eq(1).click();
}, 5000);
