//모든 공백 체크 정규식
let empJ = /\s/g;
//아이디 정규식
let idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
let pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
let nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
// 이메일 검사 정규식
let mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
let phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/


let birthJ = false;

$(document).ready(function() {
   //아이디 중복확인
      $("#id").blur(function() {
          if($('#id').val()==''){
             $('#id_check').text('아이디를 입력하세요.');
             $('#id_check').css('color', 'red');                     
      
             } else if(idJ.test($('#id').val())!=true){
                $('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
                $('#id_check').css('color', 'red');
             } else if($('#id').val()!=''){
                
               let id=$('#id').val();
                 $.ajax({
                     async : true,
                        type : 'POST',
                      data : id,//id라는 이름으로 id라는 데이터를 @WebServlet("/idsearch.do")에 보내겠다
                      url : 'idcheck.do',
                        dateType: 'json',
                        contentType: "application/json; charset=UTF-8",
                        success : function(data) {

             if(data.cnt > 0){
                $('#id_check').text('중복된 아이디 입니다.');
                      $('#id_check').css('color', 'red');
                      $("#usercheck").attr("disabled", true);
             }else{
                if(idJ.test(id)){
                   $('#id_check').text('사용가능한 아이디 입니다.');
                   $('#id_check').css('color', 'blue');
                   $("#usercheck").attr("disabled", false);
                }
                else if(id==''){
                $('#id_check').text('아이디를 입력해주세요.');
                      $('#id_check').css('color', 'red');
                      $("#usercheck").attr("disabled", true);
                }
                else{
                   $('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
                   $('#id_check').css('color', 'red');
                   $("#usercheck").attr("disabled", true);
                }
             }

           }
                });//ajax/// 
             }//else if
           
    });//blur

   $('#id').blur(function() {
      if (idJ.test($('#id').val())) {
         console.log('true');
         $('#id_check').text('');
      } else {
         console.log('false');
         $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
         $('#id_check').css('color', 'red');
      }
   });
   $('#pw').blur(function() {
      if (pwJ.test($('#pw').val())) {
         console.log('true');
         $('#pw_check').text('');
      } else {
         console.log('false');
         $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
         $('#pw_check').css('color', 'red');
      }
   });
   //1~2 패스워드 일치 확인
   $('#passwordConfirm').blur(function() {
      if ($('#pw').val() != $(this).val()) {
         $('#passwordConfirm_check').text('비밀번호가 일치하지 않습니다.');
         $('#passwordConfirm_check').css('color', 'red');
      } else {
         $('#passwordConfirm_check').text('');
      }
   });
});

//joinform_check 함수로 유효성 검사
function joinform_check() {
  //변수에 담아주기
  var uid = document.getElementById("id");
  var pwd = document.getElementById("pw");
  var repwd = document.getElementById("passwordConfirm");
  var uname = document.getElementById("name");
  var mobile = document.getElementById("phone");
  var email_id = document.getElementById("email");
  var agree1 = document.getElementById("RequiredTermsCondition");
  var agree2 = document.getElementById("RequiredTermsOfPrivacy");
  var agree3 = document.getElementById("RequiredSignupAge");
  

  if (uid.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
    alert("아이디를 입력하세요.");
    uid.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
    return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
  };

  if (pwd.value == "") {
    alert("비밀번호를 입력하세요.");
    pwd.focus();
    return false;
  };

  //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
  var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

  if (!pwdCheck.test(pwd.value)) {
    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
    pwd.focus();
    return false;
  };

  if (repwd.value !== pwd.value) {
    alert("비밀번호가 일치하지 않습니다..");
    repwd.focus();
    return false;
  };

  if (uname.value == "") {
    alert("이름을 입력하세요.");
    uname.focus();
    return false;
  };

  var reg = /^[0-9]+/g; //숫자만 입력하는 정규식

  if (!reg.test(mobile.value)) {
    alert("전화번호는 숫자만 입력할 수 있습니다.");
    mobile.focus();
    return false;
  }

  if (email_id.value == "") {
    alert("이메일 주소를 입력하세요.");
    email_id.focus();
    return false;
  }

  if (!agree1.checked || !agree2.checked || !agree3.checked ) { //체크박스 미체크시
    alert("약관 동의를 체크하세요.");
    agree.focus();
    return false;
  }

  //입력 값 전송
  document.frmJoinForm.submit(); //유효성 검사의 포인트   
}