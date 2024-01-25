	function checkreg() {
		let id = $("input[name=id]").val();
		let pw = $("input[name=pw]").val();
		let pw_ch = $("input[name=pw_check]").val();
		let email = $("input[name=email]").val();
		
		if(id.length < 4) {
			alert('아이디를 4자이상 입력하세요.');
			$("input[name=id]").select();
			return false;
		}
		
		let reg_pw = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/;
		
		if(pw.length == 0) {
			alert('아이디를 4자이상 입력하세요.');
		} else if(pw.length) {
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return true;
	}