<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-widthㅁ, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<!-- !!!3. home화면 제작 -->
<!-- 왜 대체 이렇게 되는건데 -->
<!-- body가 html의 body였다 -->
<style>
	

	body {
		background-image : url("../resources/images/LIxl7EI.gif");
		background-size: cover;
	}
		
	.container {
		width: 100vw;
		height: 80vh;
	}
	
	.mar {
		margin : 7%;
	}
	
	.card {
	    background-color: rgba(255,255,255, 0.7) !important;
	}
	
	.modal-backdrop {
	    background-color: rgba(0,0,0, 0.0001) !important;
	}
	
	.modal-size {
		width: 20%;
		height: 20%;
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
	
	<div class="bodyer">
		<div class="row justify-content-center">
			<div class="mar text-white display-3">WelCome!</div>
		</div>
		<div class="row justify-content-center">
			<!-- !!!6. 회원 로그인  창 -->
			<form method="POST" action="signinreg.jsp" class="">
				<div class="">
					<div class="card">
						<div class="card-body">
			
						    <div class="form-group">
						      <label for="signin-id">User ID</label>
						      <input type="text" class="form-control" id="signin-id" name="signinid" placeholder="plz input here ID :)">
						    </div>
						    
						    <div class="form-group">
						      <label for="signin-password">Password</label>
						      <input type="password" class="form-control" id="signin-password" name="signinpassword" placeholder="I didn't see anything XD">
						    </div>
						    
						    <div class="form-check">
						      <input type="checkbox" class="form-check-input" id="dropdownCheck">
						      <label class="form-check-label" for="dropdownCheck">
						        Remember me
						      </label>
						       
						      <button type="submit" class="btn btn-sm btn-success float-right" >Sign in</button>
						    </div>
						    
						    <div class="row">
						    	<div class="col-12"></div>
						    </div>
						    
						    <!-- !!!3.1 회원 가입 창 -->
							<div class="row mt-4">
								<div class="mr-1 float-left">
									<button type="button" class="btn btn-primary btn-sm float-left" data-toggle="modal" data-target="#modal-signup-form" >New around here?</button>
								</div>
								<div class=" float-right">
									<button type="button" class="btn btn-danger btn-sm float-right" >Forgot password?</button>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</form>
			<!-- !!!4. 회원 가입용 모달 생성 -->
				<div class="modal fade" id="modal-signup-form" tabindex="-1" role="dialog" aria-labelledby="modal-title" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-centered modal-size" role="document">
				    <div class="modal-content">
				    
				      <div class="modal-header">
				        <h5 class="modal-title w-100 text-center" id="modal-title">You're a new guest! ＼^^／</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>

				      <!-- !!!4.1 회원 가입용 데이터 전송 -->
				      <form method="POST" action="signupreg.jsp">
					      <div class="modal-body">
					        <div class="form-group">
							      <label for="signup-id">Insert New id</label>
							      <input type="text" class="form-control" name="signupid" id="signup-id" placeholder="ex ) hyb1201">
							</div>
					        <div class="form-group">
							      <label for="signup-name">Insert New name</label>
							      <input type="text" class="form-control" name="signupname" id="signup-name" placeholder="ex ) 하예범">
							</div>
					        <div class="form-group">
							      <label for="signup-nickname">Insert New nickname</label>
							      <input type="text" class="form-control" name="signupnickname" id="signup-nickname" placeholder="ex ) astar">
							</div>
					        <div class="form-group">
							      <label for="signup-password">Insert New password</label>
							      <input type="password" class="form-control" name="signuppassword" id="signup-password" placeholder="ex ) ********">
							</div>
					        <div class="form-group">
							      <label for="signup-email">Insert New Email address</label>
							      <input type="email" class="form-control" name="signupemail" id="signup-email" placeholder="ex ) hyb1201@gmail.com">
							</div>
					      </div>
					      
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					        <button type="submit" class="btn btn-success">Sign up</button>
					      </div>
				      </form>
				      
				    </div>
				  </div>
				</div>

		</div>
	</div>
	
	<div class="footer">
		
	</div>
</div>
</body>
</html>