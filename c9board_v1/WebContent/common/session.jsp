<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 6.2 로그인 정보 세션에 저장 -->
<%
	String loginYn = (String)session.getAttribute("로그인여부");

	String loginName = (String)session.getAttribute("사용자이름");
	// int loginNo = NumberUtil.stringToInt((String) (session.getAttribute("사용자번호")));
	//int loginUserNo = NumberUtil.stringToInt((String)""+ session.getAttribute("사용자번호"));
	
%>
