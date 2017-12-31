<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Kết Quả</title>
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
			<div style="margin-top: 100px; font-size: 30px;"
				class="btn btn-default" disabled="disabled">
				<span id="m">15</span> : <span id="s">00 </span>
			</div>
		</div>
		<button id="TongSoCau" style="margin-top: 100px; font-size: 30px;"
			type="button" class="btn btn-primary" value="${SoCauHoi}" name="5"
			disabled="disabled">Số câu: ${SoCauHoi}</button>

		<button id="batdau" style="margin-top: 100px; font-size: 30px;"
			type="button" class="btn btn-primary" value="Start" onclick="start()">Bắt
			đầu làm bài</button>

		<br> <br>
		<div>
			<div style="margin-top: 100px; font-size: 30px;" disabled="disabled"
				">Thời gian nộp bài: ${date}</div>
			<div style="margin-top: 100px; font-size: 30px;" disabled="disabled"
				value="${Diem}">Điểm: ${Diem}</div>
		</div>

	</div>
</body>
</html>