<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<!-- 왜 대체 이렇게 되는건데 -->
<!-- body가 html의 body였다 -->
<style>
	
	body {
		background-image : url("../resources/images/e058fa970fc282e03edc68ff4feb32d9.gif");
		background-size: cover;
	}
	
	.container {
		width: 100vw;
		height: 80vh;
		
	}

	.mar {
		margin : 8%;
	}
	
	.card {
	    background-color: rgba(255,255,255, 0.7) !important;
	}
	
	.test {	
		margin: auto;
	    position: absolute;	
		display: flex;
		justify-content: center;
		align-items: center;
		left:0;
		right:0;
		top:0;
		bottom:0;
	}

</style>
<body class="test">
<div class="container">
	
	<div class="header">

	</div>
	
	<div class="bodyer ">
	<div class=row>
		<div class="mar">&emsp;</div>
	</div>
		<div class="row justify-content-center">
			<form method="POST" action="" class="">
				<div class="">
					<div class="card ">
						<div class="card-body">
			
						    <div class="form-group ">
						      <label for="exampleDropdownFormEmail1">Email address</label>
						      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
						    </div>
						    
						    <div class="form-group">
						      <label for="exampleDropdownFormPassword1">Password</label>
						      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
						    </div>
						    
						    <div class="form-check">
						      <!-- 
						      <input type="checkbox" class="form-check-input" id="dropdownCheck">
						      <label class="form-check-label" for="dropdownCheck">
						        Remember me
						      </label>
						       -->
						      <button type="submit" class="btn btn-sm btn-success float-right" >Sign in</button>
						    </div>
						    
						    <div class="row">
						    	<div class="col-12"></div>
						    </div>
						    
							<div class="row mt-5">
								<div class="mr-1 float-left">
									<button type="button" class="btn btn-primary btn-sm float-left" id="new-user">New around here?</button>
								</div>
								<div class=" float-right">
									<button type="button" class="btn btn-danger btn-sm  float-right ">Forgot password?</button>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<div class="footer">
		
	</div>
</div>
</body>
</html>