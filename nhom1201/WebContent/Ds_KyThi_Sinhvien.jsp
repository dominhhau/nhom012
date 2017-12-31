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


		<!--tạo câu hỏi -->


		<table border="1" style="font-size:20px">
			<tr>
				<th>Index</th>
				<th>Tên kỳ thi</th>
				<th>Tổng số câu</th>
				<th>Thời gian thi</th>
				<th>Thời gian bắt đầu</th>
				<th>Thời gian kết thúc</th>

			</tr>
			<c:forEach items="${entries }" var="entry">
				<tr>
						
						<td>${entry.index}</td>
						<td>${entry.tenkythi }</td>
						<td ">${entry.tongsocau}</td>
						<td ">${entry.thoigianthi}</td>
						<td>${entry.thoigian_batdau }</td>
						<td>${entry.thoigian_ketthuc }</td>					
							<td><a href="kiemTraTungCauHoiDAO?soCauHoi=${entry.tongsocau}&Thoigian_Thi=${entry.thoigianthi}">Làm bài</a></td>
					</form>
				</tr>
			</c:forEach>
			</div>
</body>
</html>