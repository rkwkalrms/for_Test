	// 로그인화면 유효성체크
	function checkLogin() {
		let id = $("#input_id").val();
		let pw = $("#input_pw").val();
		
		// 아이디칸이 공백일 때
		if(id.length == 0) {
			$(".div_id_alert1").removeClass("hidden");
			return false;
		// 아이디를 2자 미만으로 입력했을 때
		} else if(id.length < 2) {
			$(".div_id_alert2").removeClass("hidden");
		}
		
		// 비밀번호 영문+숫자 8자리 이상 정규식
		let reg = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/;
		// 비밀번호칸이 공백일 때
		if(pw.length == 0) {
			$(".div_pw_alert1").removeClass("hidden");
			return false;
		// 비밀번호가 정해진 형태로 입력되지 않았을 때
		} else if(pw.match(reg) == null) {
			$(".div_pw_alert2").removeClass("hidden");
			return false;
		}
		
		return true;
	}
	function formReset() {
		$("form").each(function() {
			this.reset();
		})
	}
	// 회원가입화면 유효성체크
	function checkReg() {
		let id = $("input[name=id]").val();
		let pw = $("input[name=pw]").val();
		let pw_check = $("input[name=pw_check]").val();
		let name = $("input[name=name]").val();
		let age = $("input[name=age]").val();
		let email = $("input[name=email]").val();
		
		// 아이디 유효성 체크(4자 이상)
		if(id.length == 0) {
			$("#div_id_alert1").removeClass("hidden");
			$("input[name=id]").select();
			return false;
		} else if(id.length < 4) {
			$("#div_id_alert2").removeClass("hidden");
			$("input[name=id]").select();
			return false;
		}
		
		// 비밀번호 영문숫자조합 8자리 이상 정규식
		let reg_pw = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/;
		// 비밀번호 유효성 체크
		if(pw.length == 0) {
			$("#div_pw_alert1").removeClass("hidden");
			$("input[name=pw]").select();
			return false;
		} else if(pw.match(reg_pw) == null) {
			$("#div_pw_alert2").removeClass("hidden");
			$("input[name=pw]").select();
			return false;
		}
		
		// 비밀번호확인 유효성 체크
		if(pw_check.length == 0) {
			$("#div_pw_check_alert1").removeClass("hidden");
			$("input[name=pw_check]").select();
			return false;
		} else if(pw_check != pw) {
			$("#div_pw_check_alert2").removeClass("hidden");
			$("input[name=pw_check]").select();
			return false;
		}
		
		// 한글이름 정규식
		let reg_name = /^[가-힣]{2,4}$/;
		// 이름 유효성 체크
		if(name.length == 0) {
			$("#div_name_alert1").removeClass("hidden");
			$("input[name=name]").select();
			return false;
		} else if(name.match(reg_name) == null) {
			$("#div_name_alert2").removeClass("hidden");
			$("input[name=name]").select();
			return false;
		}
		
		// 나이 유효성 체크(0~100)
		if(age.length == 0) {
			$("#div_age_alert1").removeClass("hidden");
			$("input[name=age]").select();
			return false;
		} else if(Number(age)<0 || Number(age)>100) {
			$("#div_age_alert2").removeClass("hidden");
			$("input[name=age]").select();
			return false;
		}
		
		// 이메일 정규식
		let reg_email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		// 이메일 유효성 체크
		if(email.length == 0) {
			$("#div_email_alert1").removeClass("hidden");
			$("input[name=email]").select();
			return false;
		} else if(email.match(reg_email) == null) {
			$("#div_email_alert2").removeClass("hidden");
			$("input[name=email]").select();
			return false;
		}
		
		// 성별 유효성 체크
		if($("input[name=gender]:radio:checked").length == 0) {
			$("#div_gender_alert").removeClass("hidden");
			return false;
		}
		
		// 취미 유효성 체크
		if($("input[name=hobby]:checkbox:checked").length == 0) {
			$("#div_hobby_alert").removeClass("hidden");
			return false;
		}
		
		// 서식지 유효성 체크
		if($("select").val() == "서식지 선택") {
			$("#div_location_alert").removeClass("hidden");
			return false;
		}
		
		// 개인정보취급방침 동의 여부
		if($("#input_agree:checked").length == 0) {
			$("#div_agree_alert").removeClass("hidden");
			return false;
		}
		
		return true;
	}
	$(function() {
		// input박스 안에 값이 변동될 때 안내창 감춤
		$("input[type=text],input[type=password]").on("change", function() {
			$(".div_alert").addClass("hidden");
		})
		// 클릭계열 input과 select가 클릭될 때 안내창 감춤
		$("input[name=gender]").on("click", function() {
			$("#div_gender_alert").addClass("hidden");
		})
		$("input[name=hobby]").on("click", function() {
			$("#div_hobby_alert").addClass("hidden");
		})
		$("select").on("click", function() {
			$("#div_location_alert").addClass("hidden");
		})
		$("input[name=agree]").on("click", function() {
			$("#div_agree_alert").addClass("hidden");
		})
		
		$("#input_id").on("change", function() {
			$(".div_id_alert1").addClass("hidden");
			$(".div_id_alert2").addClass("hidden");
		})
		$("#input_pw").on("change", function() {
			$(".div_pw_alert1").addClass("hidden");
			$(".div_pw_alert2").addClass("hidden");
		})
	})
