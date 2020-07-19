<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
	body {
		background-image : url("../resources/images/e058fa970fc282e03edc68ff4feb32d9.gif");
		background-size: cover;
	}
	
	.container {
		width: 100vw;
		height: 80vh;
	}
	
	.navbar {
	    background-color: rgba(255,255,255, 0.7) !important;
	}
	
	.mar {
		margin : 14%;
	}
	
</style>
<!-- !!!7. main 화면 생성 -->
<body>
	<%
		String position = "myhome";
	%>
	
	<!-- 왜 "c9board_v1/WebContent/common/nav.jsp" 이 안되지?-->
	<!-- 왜 "nav.jsp" 는 되지?-->
	<%@ include file="../common/nav.jsp" %>
	<div class="container">
		<div class="header">

		</div>
		
		<div class="bodyer">
			<div class="row justify-content-center">
				<div class="mar text-white display-3">WelCome!</div>
			</div>
		</div>
		
		<div class="footer">
		
		</div>
		
	</div>
</body>
</html>