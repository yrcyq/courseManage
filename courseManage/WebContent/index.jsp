<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style1.css">
<link rel="stylesheet" type="text/css" href="css/body.css">
<title>Course Management System</title>
</head>
<body>
<div class="container">
<section id="content">
<form action="" name="form" id="form">
<h1>Login</h1>
   <tr> <input name="user" type="radio" id="1" onclick="javascript:this.form.action='index1.jsp'">Admin </tr>
    <tr><input name="user" type="radio" id="2"onclick="javascript:this.form.action='index2.jsp'"> Student </tr>
	<div><input type="submit" value="Go" name="submit"> </div>
</form>	 
</section>
</div>
<br><br><br><br>
</body>
</html>