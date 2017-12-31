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
				<td>${entry.index }</td>
				<td>${entry.tenkythi }</td>
				<td>${entry.tongsocau }</td>
				<td>${entry.thoigianthi }</td>
				<td>${entry.thoigian_batdau }</td>
				<td>${entry.thoigian_ketthuc }</td>
				<td><a href="suaKythiDAO?id=${entry.index }">Sửa</a></td>								
			</tr>
		</c:forEach>
	</table>


	<p><a href="themKyThi.jsp">Thêm kỳ thi</a></p>

</body>
</html>