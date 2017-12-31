<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8"/>
<title>Sửa Kỳ Thi</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap/app.css">
</head>


<body>
	<section id="main">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-kim">

						<div class="panel-heading">
							<h4>Mã kỳ thi : ${entry.index }</h4>
						</div>

						<div class="panel-body">
							<form id="form-login" action="suaKythiDAO" method="POST"
								role="form">


								<div class="form-group">
									<label>Tên kỳ thi</label> 
									<input type="text" class="form-control" name="tenkythi" value="${entry.tenkythi }">
								</div>

								<div class="form-group">
									<label >Tổng số câu</label> 
									<input type="number" class="form-control" name="tongsocau" value="${entry.tongsocau }">
								</div>
								
								<div class="form-group">
									<label>Thời gian thi</label> 
									<input type="number" class="form-control" name="thoigianthi" value="${entry.thoigianthi }">
								</div>
								
								<div class="form-group">
									<label>Thời gian bắt đầu</label>
									
									<input type="date" class="form-control" name="thoigian_batdau"value="${entry.thoigian_batdau }">
									

								</div>

								<div class="form-group">
									<label>Thời gian kết thúc</label> 
									<input type="date" class="form-control" name="thoigian_ketthuc" value="${entry.thoigian_ketthuc }">
								</div>




								<div class="row">
									<div class="col-md-4">
										<button type="submit" class="btn btn-primary btn-block">Thêm</button>
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /#main -->

	<script src="bootstrap/jquery.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>

</body>
</html>