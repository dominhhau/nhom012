<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8"/>
    <title>Sửa sinh viên</title>

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
                        <h4>Mã sinh viên : ${entry.index }</h4>
                    </div>

                    <div class="panel-body">
                        <form id="form-login" action="suaSvDAO" method="POST" role="form">
                            <div id="errors">

                            </div>
                            <div class="form-group">
                                <label for="username">Họ và tên</label>
                                <input type="text" class="form-control" name="fullname" placeholder=" từ 8-20 ký tự" id="tenDangNhap"value="${entry.fullname }">
                            </div>

                            <div class="form-group">
                                <label for="username">Tên đăng nhập</label>
                                <input type="text" class="form-control" name="user" placeholder=" từ 8-20 ký tự" pattern="^[a-zA-Z][a-zA-Z0-9_]{8,20}$" required="required" id="tenDangNhap" value="${entry.user }">
                            </div>

                            <div class="form-group">
                                <label for="password">Mật Khẩu</label>
                                <input type="password" class="form-control" name="pass" placeholder="Mật khẩu phải có chữ in hoa, chữ thường và chữ số" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" id="matKhau" value="${entry.pass }"> 
                            </div>
                            

                            <div class="row">
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary btn-block">Sửa</button>
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