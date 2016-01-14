<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  type="text/javascript" src="/XSSSecurityFilter/JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function(){ 
		$("#button").click(function(){
			$.ajax({
				   type: "POST",
				   url: "/XSSSecurityFilter/xss.do",
				   data:  $("#form").serialize(),
				   success: function(msg){
				     	$("#text").html(msg);
				   }
				})
		});
	});  
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="/XSSSecurityFilter/xss.do" id="form">
		<!--  </div><script>alert("as")</script>//-->
		<div id="text">注入代码 : </div>
		<input type="text" name="word" id="value"><input type="button" id="button" value="提交">
	</form>
</body>
</html>