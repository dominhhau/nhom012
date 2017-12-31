<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr><th>Id</th><th>Họ tên</th><th>Tên đăng nhập</th><th>Mật khẩu</th></tr>
<c:forEach items="${entries }" var="entry">
	<tr>
		<td>${entry.IDsv }</td>
		<td>${entry.fullname }</td>
		<td>${entry.username }</td>
		<td>${entry.password }</td>
		<td><a href="EditComment.jsp?id=${entry.IDsv }">Sửa</a></td>
		<td><a href="EditComment.jsp?id=${entry.IDsv }">Xóa</a></td>
	</tr>	
</c:forEach>
</table>

<p><a href="#">Thêm sinh viên</a></p>

</body>
</html>