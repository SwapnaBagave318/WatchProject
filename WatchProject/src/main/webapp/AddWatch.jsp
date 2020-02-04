<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.container
{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
		position:relative;
		
}
.myform
{
	background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
        margin:0 auto;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
		<form class="col-lg-6 col-md-6 col-sm-12 col-xs-12 myform" action="AddWatchController" method="post">
		<h2 align="center">Add Product</h2>
			<div class="form-group">
				<label>Enter Product Name</label>
				<input type="text" name="addproduct" class="form-control" placeholder="Enter Product-Name"/>
			</div>
			<div class="form-group">
				<label>Enter Brand</label>
				<input type="text" name="brand" class="form-control" placeholder="Enter Brand"/>
			</div>
			<div class="form-group">
				<label>Enter Price</label>
				<input type="number" name="price" class="form-control" placeholder="Enter Price"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Add Product" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block" />
			</div>
		</form>
		
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>