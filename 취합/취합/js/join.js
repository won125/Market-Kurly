window.onload=function(){
    //성별 라디오 버튼
    $('.dividespace .circle').click(function(){
        $('.circle').removeClass("changebigcircle");
        $(this).addClass("changebigcircle");
    });
    $('.seconddividespace .bigcircle1').click(function(){
        $('.bigcircle1').removeClass("changebigcircle");
        $(this).addClass("changebigcircle");
        $('.bigcircle2').removeClass("changebigcircle");
    });
    $('.seconddividespace .bigcircle2').click(function(){
        $('.bigcircle2').removeClass("changebigcircle");
        $(this).addClass("changebigcircle");
        $('.bigcircle1').removeClass("changebigcircle");
    });
    $('.circle').trigger('click');

    //추가입력사항 라디오 버튼
    $(function(){
        $('.bigcircle1').click(function(){
             $('.hiddeninput1').show(); //함수에 attr로 연결해서 그림넣을 수 있음. 3초 동안 그림보여주고, 그림 바뀜
             $('.hiddeninput2').hide();
        });
        $('.bigcircle2').click(function(){
            $('.hiddeninput2').show(); //함수에 attr로 연결해서 그림넣을 수 있음. 3초 동안 그림보여주고, 그림 바뀜
            $('.hiddeninput1').hide();
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






    $(function(){
        $('.abc').click(function(){
            if($('.abc').prop('checked')){
                $('.cba').prop('checked',true);
            }else{
                $('.cba').prop('checked',false);
            }
        });
        $('.agreement5').click(function(){
            if($('.cba:checked').length==2){
                $('.abc').prop('checked',true);
            }else{
                $('.abc').prop('checked',false);
            }
        });
        $('.agreement6').click(function(){
            if($('.cba:checked').length==2){
                $('.abc').prop('checked',true);
            }else{
                $('.abc').prop('checked',false);
            }
        });
    });
}

function sample6_execDaumPostcode() {
    new daum.Postcode({
    oncomplete: function(data) {
    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
    
    
    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
    
    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
    
    var addr = ''; // 주소 변수
    
    var extraAddr = ''; // 참고항목 변수
    
    
    
    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
    
    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
    
    addr = data.roadAddress;
    
    } else { // 사용자가 지번 주소를 선택했을 경우(J)
    
    addr = data.jibunAddress;
    
    }
    
    
    
    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
    
    if(data.userSelectedType === 'R'){
    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
    
    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
    
    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
    extraAddr += data.bname;
    
    }
    
    // 건물명이 있고, 공동주택일 경우 추가한다.
    
    if(data.buildingName !== '' && data.apartment === 'Y'){
    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
    
    }
    
    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
    
    if(extraAddr !== ''){
    extraAddr = ' (' + extraAddr + ')';
    
    }
    
    // 조합된 참고항목을 해당 필드에 넣는다.
    
    document.getElementById("sample6_extraAddress").value = extraAddr;
    
    
    
    } else {
    document.getElementById("sample6_extraAddress").value = '';
    
    }
    
    
    
    // 우편번호와 주소 정보를 해당 필드에 넣는다.
    
    document.getElementById('sample6_postcode').value = data.zonecode;
    
    document.getElementById("sample6_address").value = addr;
    
    // 커서를 상세주소 필드로 이동한다.
    
    document.getElementById("sample6_detailAddress").focus();
    
    }
    
    }).open();
    
    }


