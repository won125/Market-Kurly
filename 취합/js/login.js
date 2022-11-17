
    function loginCheck(){
    	let loginForm = document.loginForm;
    	let id = document.getElementById('id').value;
    	let pwd = document.getElementById('pwd').value;
       
        if(id == ""){
    		alert("아이디 또는 비밀번호를 입력해주세요.");
    	} else if (pwd == ""){
    		alert("아이디 또는 비밀번호를 입력해주세요.");
    	} else {
    		loginForm.submit();
    	}
    } 
	function alert(msg){
		Swal.fire(msg);
	} 