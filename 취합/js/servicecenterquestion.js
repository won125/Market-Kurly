window.onload=function(){
//    질문 클릭
//    $(function(){
//         $('.writespace').index(this).click(function(){
//              $('.answerarea').toggle();   
//          });
//     });
     // $(function(){
     //      $('.writespace').index(this).click(function(){
     //           $('.answerarea').toggle();
     //      });
     // });
     $(document).on("click", ".writespace", function(){
          $(this).find(".answerarea").toggle();
     });
};