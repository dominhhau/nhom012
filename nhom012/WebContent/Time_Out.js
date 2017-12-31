$(document).ready(function() {
	$(".btn-CauHoi").click(function() {
		$(this).css("border-color", "red");
		$(".btn-CauHoi").not("#" + this.value).css("border-color", "gray");
		// Câu Hỏi
		$(".CauHoi").filter("#c" + this.value).show();
		$(".CauHoi").not("#c" + this.value ).hide();
		// Next
		$(".Next").filter("#Next" + this.value).show();
		$(".Next").not("#Next" + this.value).hide();
	});
});
$(document).ready(function() {
	$("input").click(function() {
		var id = this.name.substr(1,1);
		$(".btn-CauHoi").filter("#" + id).css("background-color", "aqua");
	});
});
$(document).ready(function() {
	$(".Next").click(function() {
		var id = parseInt(this.name.substr(4,1));
		var Max = parseInt($("#TongSoCau").val());
		
		if ( id === Max)
			{
			id =0;
			}
		
		//Next tiếp theo Hiện 
		$(".Next").filter("#Next" + (id+1) ).show();
		$(".Next").not("#Next" + (id+1) ).hide();
		//
		$(".CauHoi").filter("#c" + (id+1) ).show();
		$(".CauHoi").not("#c" + (id+1) ).hide();
		//
		$(".btn-CauHoi").filter("#" + (id+1) ).css("border-color", "red");
		$(".btn-CauHoi").not("#" + (id+1) ).css("border-color", "gray");
	});
});
$(document).ready(function() {
	$("#batdau").click(function() {
		$("#formkiemtra").show();
		$("#1").css("border-color", "red");
		$(".CauHoi").not("#c1").hide();
		$("#c1").show();
		var btn = document.getElementById("batdau");
		btn.disabled = "disabled";
	});
});

$(document).ready(function() {
	$("#ketthuc").click(function() {
		$("#formkiemtra").hide();

	});
});
var m = null; // Phút
var s = null; // Giây

var timeout = null; // Timeout

function start() {
	/*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
	if (m === null) {
		m = parseInt(document.getElementById('minute').value);
		s = 00;
	}
	/*BƯỚC 2: CHUYỂN ĐỔI DỮ LIỆU*/
	// Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
	//  - giảm số phút xuống 1 đơn vị
	//  - thiết lập số giây lại 59
	if (s === -1) {
		m -= 1;
		s = 59;
	}
	// Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
	//  - giảm số giờ xuống 1 đơn vị
	//  - thiết lập số phút lại 59
	if (m === -1) {
		clearTimeout(timeout);
		alert('Hết giờ');
		document.getElementById("formkiemtra").submit();
		return false;
	}
	/*BƯỚC 3: HIỂN THỊ ĐỒNG HỒ*/
	document.getElementById('m').innerText = m.toString();
	document.getElementById('s').innerText = s.toString();

	/*BƯỚC 4: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
	timeout = setTimeout(function() {
		s--;
		start();
	}, 1000);
}
function stop() {
	clearTimeout(timeout);
}
