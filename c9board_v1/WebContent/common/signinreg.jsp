<%@page import="v1.coders9.vo.User"%>
<%@page import="v1.coders9.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- !!!6.1 로그인 레지스터 수령 -->
<%
	request.setCharacterEncoding("UTF-8");

	String userId = request.getParameter("signinid");
	String userPassword = request.getParameter("signinpassword");
	
	UserDao userDao = new UserDao();
	User user = userDao.getUserById(userId);
	
	// 등록된 사용자가 없는 경우
	if (user == null) {
		return;
	}
	
	// 비밀번호가 맞지 않는 경우
	if (!userPassword.equals(user.getUserPassword())) {
		return;
	}
	
	// 둘다 통과한 경우 session에 기본 정보 저장 
	session.setAttribute("사용자이름", user.getUserName());
	session.setAttribute("사용자번호", user.getUserNo());
	session.setAttribute("로그인여부", "Yes");
	
	response.sendRedirect("/c9board_v1/common/mymain.jsp");
%>
