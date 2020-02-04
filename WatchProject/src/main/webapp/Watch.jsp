<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<sql:setDataSource driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://34.69.181.145:3306/db" password="root" user="root" var="con"/>
	
	<sql:query var="rs" dataSource="${con}">
		select * from watch
	</sql:query>
	
	
	<table class="table table-striped">
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Brand</th>
			<th>Price</th>
			<th>Edit | Delete</th>
		</tr>
		<c:forEach items="${rs.rows}" var="row">
			<tr>
				<td>${row.productid}</td>
				<td>${row.productname}</td>
				<td>${row.brand}</td>
				<td>${row.price}</td>
				<th><a href="" class="btn btn-primary">Edit</a> | <a href="" class="btn btn-danger">Delete</a></th>
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>