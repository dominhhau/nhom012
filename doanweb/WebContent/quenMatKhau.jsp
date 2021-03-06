<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quen mat khau</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap/app.css">
</head>
<body>

<section id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-kim">

                    <div class="panel-heading">
                        <h4>Quên mật khẩu</h4>
                    </div>

                    <div class="panel-body">
                        <form id="form-forgot" action="" method="POST" role="form">
                            <div id="errors">

                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Nhập địa chỉ email" required="" >
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary btn-block">Lấy lại mật khẩu</button>
                                </div>
                                <div class="col-md-6">
                                    <a href="dangNhap.jsp" class="btn btn-link">Đăng nhập</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</section> <!-- /#main -->

<script src="bootstrap/jquery.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>

</body>
</html>