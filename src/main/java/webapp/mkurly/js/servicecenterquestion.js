window.onload=function(){
   //질문 클릭
   $(function(){
        $('.qnaarea').click(function(){
             $('.answerarea').toggle();   
         });
    });
    
    $(function(){
		$('.nextbutton').click(function(){
		 var number = $('input[name=nowpage]').val();	
		 var fnumber =parseInt(number);
		 if(fnumber>=1){
			fnumber++;
			$('input[name=nowpage]').val(fnumber);
			window.location.href='${contextPath}/mostqna/mostQnaPage.do' ;
		}	
		});
})

    $(function(){
		$('.backbutton').click(function(){
		 var number = $('input[name=nowpage]').val(); 
		 var fnumber =parseInt(number);
		 if(fnumber>1){
			fnumber--;
			$('input[name=nowpage]').val(fnumber);
		}
		});
})
    
}

 
 
   

		
				
	
   

