'use strict';
 
function sign() {
    let id=document.getElementById("id").value;
    let pwd=document.getElementById("pw").value;
    let pwdcheck=document.getElementById("passwordConfirm").value;
    let name=document.getElementById("name").value;
    let age=document.getElementById("age").value;
    let address=document.getElementById("address").value;
    let zipcode=document.getElementById("zipcode").value;
    let phonenumber=document.getElementById("phonenumber").value;
    let email=document.getElementById("email").value;
 
    const idReg=/[^\w]|[\s]/g;
    const pwdReg=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}/g;
    const nameReg=/[^가-힣a-zA-Z]{2,20}/g;
    const zipcodeReg=/[^0-9]|[\s]{,8}/g;
    const phonenumberReg=/^\d{3}-\d{3,4}-\d{4}/g;
    const emailReg=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}/g;
    
    // 아이디 유효성 검사
    if(id.trim()=="")  {
        alert("아이디를 입력해주세요!")
        return false;
    }
    else if(id.trim().match(idReg))   {
        alert("아이디는 영문 대소문자,숫자,밑줄(_)만 사용 가능하며 공백이 있으면 안 됩니다.");
        return false;
    }
 
    // 비밀번호 유효성 검사
    if(pwd.trim()=="")  {
        alert("비밀번호를 입력해주세요!")
        return false;
    }
    else if(!pwd.trim().match(pwdReg))   {
        alert("비밀번호는 영어 대소문자 및 숫자,그리고 특수문자(키보드 1~10)를 하나 이상 포함해야 합니다.");
        return false;
    }
    if(pwdcheck.trim()=="") {
        alert("비밀번호 확인란을 입력해주세요.");
        return false;
    }
    else if(pwd.trim()!=pwdcheck.trim()) {
        alert("비밀번호가 일치하지 않습니다!");
        return false;
    }
 
    // 이름 유효성 검사
    if(name.trim()=="")  {
        alert("성명을 입력해주세요!")
        return false;
    }
    else if(name.trim().match(nameReg))   {
        alert("이름은 한글 혹은 영문만 작성 가능하며 최소 2자에서 최대 20자까지만 작성 가능합니다.");
        return false;
    }
 
    if(age.trim()=="") {
        alert("나이를 입력해주세요");
        return false;
    }
    // 나이는 HTML에서 20세 이상만 입력 가능하도록 해서 따로 넣지 않았습니다.
 
    if(address.trim()=="") {
        alert("주소를 입력해주세요");
        return false;
    }
 
    // 주소는 보통 도로명 주소나 지번을 검색해서 웹사이트에서 처리해서 따로 넣지 않았습니다.
 
    // 우편번호 유효성 검사
    if(zipcode.trim()=="")  {
        alert("우편번호를 입력해주세요.")
        return false;
    }
    else if(zipcode.trim().match(zipcodeReg))   {
        alert("우편번호는 숫자만 입력이 가능하며 공백이 있으면 안 되고 8자를 넘을수 없습니다.");
        return false;
    }
 
    // 전화번호 유효성 검사
    if(phonenumber.trim()=="")  {
        alert("전화번호를 입력해주세요.")
        return false;
    }
 
    else if(!phonenumber.trim().match(phonenumberReg))   {
        alert("전화번호 양식에 맞지 않습니다.");
        return false;
    }
 
    // 이메일 유효성 검사
    if(email.trim()=="")  {
        alert("이메일을 입력해주세요.")
        return false;
    }
    else if(!email.trim().match(emailReg))   {
        alert("이메일 형식에 맞지 않습니다.");
        return false;
    }
 	
 	//모두 성립하면 서밋
    document.frmJoinForm.submit();
};

