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
			<th>Nhóm</th>
			<th>Nội dung</th>
			<th>Đáp án A</th>
			<th>Đáp án B</th>
			<th>Đáp án C</th>
			<th>Đáp án D</th>
			<th>Đáp án đúng</th>
			
		</tr>
		<c:forEach items="${entries }" var="entry">
			<tr>
				<td>${entry.index }</td>
				<td>${entry.nhom }</td>
				<td>${entry.noidung }</td>
				<td>${entry.QA }</td>
				<td>${entry.QB }</td>
				<td>${entry.QC }</td>
				<td>${entry.QD }</td>
				<td>${entry.dapan }</td>
				<td><a href="suaCauhoiDAO?id=${entry.index }">Sửa</a></td>
				<td><a href="xoaCauhoiDAO?id=${entry.index }">Xóa</a></td>
			</tr>
		</c:forEach>
	</table>


	<p><a href="themCauHoi.jsp">Thêm Câu hỏi</a></p>

</body>
</html>