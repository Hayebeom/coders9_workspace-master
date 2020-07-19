<%@page import="v1.coders9.vo.User"%>
<%@page import="v1.coders9.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- !!!5.1 회원 가입 레지스터 수령 -->
<%
	request.setCharacterEncoding("UTF-8");

	// myhome에서 목적지가 signupreg.jsp인 form의 각 태그 name을 파라미터로 받아서 저장
	String userId = request.getParameter("signupid");
	String userName = request.getParameter("signupname");
	String userNickname = request.getParameter("signupnickname");
	String userPassword = request.getParameter("signuppassword");
	String userEmail = request.getParameter("signupemail");
	
	User user = new User();
	user.setUserId(userId);
	user.setUserName(userName);
	user.setUserNickname(userNickname);
	user.setUserPassword(userPassword);
	user.setUserContact(userEmail);
	
	UserDao userDao = new UserDao();
	
	// 아이디 체크로 이미 존재하는 사용자 가져옴
	User findUser = userDao.getUserById(userId);
	
	// 이미 존재하는 사용자가 있다면 return
//	if (user.getUserId().equals(findUser.getUserId())) {
	if (findUser != null) {
		// userId를 실시간 검사해서 아예 안넘어가게 해야될듯, 아니면 modal창 말고 페이지를 만들던가, modal창으로 하긴 너무 힘들다...
		response.sendRedirect("myhome.jsp?error=notok");
		return;
	}
	
	// 존재하지 않는 사용자니까 인서트 시작
	userDao.insertUser(user);
//	out.write("회원가입이 완료되었습니다!"); 둘 다 안됨
//	out.print("회원가입이 완료되었습니다!");
	response.sendRedirect("/c9board_v1/common/myhome.jsp");
%>