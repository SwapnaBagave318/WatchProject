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
		<form class="col-lg-6 col-md-6 col-sm-12 col-xs-12 myform" action="LoginController" method="post">
		<h2 align="center">Login</h2>
			<div class="form-group">
				<label>Enter Username</label>
				<input type="text" name="username" class="form-control" placeholder="Enter Username"/>
			</div>
			<div class="form-group">
				<label>Enter Password</label>
				<input type="password" name="password" class="form-control" placeholder="Enter Password"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Login" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block" />
			</div>
		</form>
		
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>