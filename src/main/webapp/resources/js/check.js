function check() {
	if(!frm.p_no.value) {
		alert("환자번호가 입력되지 않았습니다!");
	} else if(frm.t_code.value == "null") {
		alert("검사코드가 선택되지 않았습니다!")
	} else if(!frm.t_sdate.value) {
		alert("검사시작일자가 입력되지 않았습니다!")
	} else if(frm.t_status[0].checked == false && frm.t_status[1].checked == false) {
		alert("검사상태가 선택되지 않았습니다!")
	} else if(!frm.t_ldate.value) {
		alert("검사완료일자가 입력되지 않았습니다!")
	} else if(frm.t_result[0].checked == false && frm.t_result[1].checked == false && frm.t_result[2].checked == false) {
		alert("검사결과가 선택되지 않았습니다!")
	} else {
		alert("검사결과가 정상적으로 등록되었습니다!")
		document.frm.submit();
	}
}

function reset() {
	alert("정보를 지우고 처음부터 다시 입력합니다!")
	document.frm.reset();
}