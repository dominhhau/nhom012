<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Kiểm tra</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">
<script src="bootstrap\jquery\jquery.min.js"></script>
<script src="bootstrap\js\bootstrap.min.js"></script>
<link href="bootstrap\icon\icon.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="myWeb.css">

<script src="Time_Out.js" type="text/javascript"></script>

</head>
<body>
	<nav class="navbar navbar-inverse " style="font-size:18px">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <span
				class="glyphicon glyphicon-home"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">

				<li><a href="Page_Trangchu.html">Trang chủ</a></li>
				<li class="active"><a href="#">Thi thử</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container" style="text-align: center">
		<div class="btn-group">
			<div style="margin-top: 100px; font-size: 30px; width: 300px;"
				type="button" class="btn btn-default" value="Thể loại:Trắc nghiệm"
				disabled="disabled">Trắc nghiệm</div>
		</div>
		<div class="btn-group">
			<button id="minute" style="margin-top: 100px; font-size: 30px;color:yellow;"
			type="button" class="btn btn-primary" value="${Thoigian_Thi }" 
			disabled="disabled"><span id="m" >${Thoigian_Thi }</span> : <span id="s">00 </span></button>
		</div>
		<button id="TongSoCau" style="margin-top: 100px; font-size: 30px;"
			type="button" class="btn btn-primary" value="${SoCauHoi}" name="5"
			disabled="disabled">Số câu: ${SoCauHoi}</button>
			
		<button id="batdau" style="margin-top: 100px; font-size: 30px;"
			type="button" class="btn btn-primary" value="Start" onclick="start()">Bắt
			đầu làm bài</button>

		<br> <br>
		<div>
			<c:forEach var="i" begin="1" end="${SoCauHoi}">
				<button id="${i}" type="button"
					class="btn btn-default btn-lg btn-CauHoi" value="${i}"
					style="border-color: gray">${i}</button>
			</c:forEach>
		</div>
		<!--tạo câu hỏi -->
		<form name="formkiemtra" id="formkiemtra" action="KiemTraTungCau"
			method="Post"
			style="text-align: left; margin-left: 200px; font-size: 22px;" Hidden>
			<c:forEach items="${entries}" var="entry">
				<div id="c${entries.indexOf(entry)+1}" class="CauHoi">
					<h1 style="font-size: 24px;">Câu ${entries.indexOf(entry)+1}:
						${entry.noidung}</h1>
					<div>
						<tr>
							<td>A: <input type="radio"
								name="c${entries.indexOf(entry)+1}" value="QA"
								id="ans${entries.indexOf(entry)+1}" /></td>
							<td>${entry.QA}</td>
							</br>
						</tr>
						<tr>
							<td>B: <input type="radio"
								name="c${entries.indexOf(entry)+1}" value="QB"
								id="ans${entries.indexOf(entry)+1}" /></td>
							<td>${entry.QB}</td>
							</br>
						</tr>

						<tr>
							<td>C: <input type="radio"
								name="c${entries.indexOf(entry)+1}" value="QC"
								id="ans${entries.indexOf(entry)+1}" /></td>
							<td>${entry.QC}</td>
							</br>
						</tr>
						<tr>
							<td>D: <input type="radio"
								name="c${entries.indexOf(entry)+1}" value="QD"
								id="ans${entries.indexOf(entry)+1}" />
							</td>
							<td>${entry.QD}</td>
							</br>
						</tr>
					</div>
					<div>
						<button type="button" value="Next" class="btn btn-lg block Next"
							name="Next${entries.indexOf(entry)+1}"
							id="Next${entries.indexOf(entry)+1}">Next</button>
					</div>
				</div>
			</c:forEach>
			<div style="margin: 10px; text-align: right; width: 550px">
				<button type="submit" value="Submit"
					class="btn btn-primary btn-lg block">FINISH</button>
			</div>
		</form>
	</div>
</body>
</html>