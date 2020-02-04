<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body, html 
{
  height: 100%;
}
.bg {
  /* The image used */
  background-image: url("w1.jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
 <div class="bg">
 </div>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>