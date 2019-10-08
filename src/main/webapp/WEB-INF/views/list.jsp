<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록보기</title>
</head>
<body>
	<h2>* 상품 자료(@MVC : mybatis 방법으로 DB 접근) *</h2>
	<table border="1">
		<tr><th>코드</th><th>품명</th><th>수량</th><th>가격</th></tr>
		<c:forEach var="s" items="${datas }">
			<tr>
				<td>${s.code }</td>
				<td>${s.sang }</td>
				<td>${s.su }</td>
				<td>${s.dan }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4">
				<form action="search" method="post">
					상품명 : <input type="text" name="searchValue">
					<input type="submit" value="검색">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>