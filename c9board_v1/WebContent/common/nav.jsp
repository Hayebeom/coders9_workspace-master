<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- !!!8. nav 작성 -->
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<!-- href : 절대 경로는 /부터 하던대로 작성 -->
	  <a class="navbar-brand" href="/c9board_v1/common/mymain.jsp">Main</a>
		<!-- navbar-toggler : 화면이 커지면 자동 숨겨짐 , collapse 표시됨 -->
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
		<!-- navbar-collapse : 화면이 줄어들면 자동 숨겨짐 , toggle 표시됨 -->
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	    <!-- active : 메뉴바가 활성화된 색으로 변함. 하나만 가능 -->
	      <li class="nav-item active">
	      <!-- sr-only : 화면에 출력되지 않지만, 웹 접근성은 상승 (but 요즘은 먹히지 않음) -->
	        <a class="nav-link" href="/c9board_v1/common/myhome.jsp">Home <span class="sr-only">(current)</span></a>
	      </li>

	      <li class="nav-item">
	        <a class="nav-link" href="/c9board_v1/common/board.jsp">Board</a>
	      </li>
	      
	      <li class="nav-item dropdown">
	      	<!-- aria-haspopup : 메뉴를 열기 위한 버튼에 설정 혹은 메뉴 항목이 서브메뉴를 가진 경우 설정하며, 메뉴 버튼인 경우 해당 버튼이 팝업 메뉴를 가지고 있음을 스크린 리더 사용자가 알 수 있도록 하기 위해 사용 -->
	      	<!-- aria-expanded : 메뉴가 확장되었음을 나타낼 때 사용 -->
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Dropdown
	        </a>
	        <!-- aria-labelledby : 여러 개의 폼 요소를 그룹화하여 동일한 'Label'값으로 묶어서 제공하고 싶을 때 사용 -->
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#">아직</a>
	          <a class="dropdown-item" href="#">미완</a>
	          <!-- dropdown-divider : 목록 아래로 실선 -->
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">이라서..ㅎㅎ</a>
	        </div>
	      </li>
	      
	      <li class="nav-item">
	      <!-- disabled : 사용하지 않을 때 사용, 회색 글씨로 표시되며 활성화되지 않음 -->
	        <a class="nav-link disabled" href="#">Disabled</a>
	      </li>
	      
	      <li class="nav-item">
	      <%
	      // 세션에 저장된 id를 어떻게 불러온다?
	      	session.getAttribute();
	      %>
	      	<a>님 환영합니다!</a>
	      </li>
	    </ul>
	    
	    
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
	
</body>
</html>