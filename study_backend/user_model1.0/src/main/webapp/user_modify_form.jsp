<%@page import="com.itwill.user.User"%>
<%@page import="com.itwill.user.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="user_login_check.jspf"%>

<%
/*
1. UserService객체생성
2. 세션의 sUserId를 사용해서 UserService.findUser()메쏘드호출
3. 반환된 User객체를 form  element  value 값으로 출력
*/
UserService userService = new UserService();
String userId = (String) session.getAttribute("sUserId");
User user = userService.findUser(userId);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>내정보 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/user.css" type="text/css">
<script type="text/javascript">
	function userModify() {
		if (document.f.password.value == "") {
			alert("비밀번호를 입력하십시오.");
			document.f.password.focus();
			return false;
		}
		if (document.f.password2.value == "") {
			alert("비밀번호 확인을 입력하십시오.");
			document.f.password2.focus();
			return false;
		}
		if (document.f.name.value == "") {
			alert("이름을 입력하십시오.");
			document.f.name.focus();
			return false;
		}
		if (document.f.email.value == "") {
			alert("이메일 주소를 입력하십시오.");
			document.f.email.focus();
			return false;
		}
		if (document.f.password.value != f.password2.value) {
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			document.f.password.focus();
			document.f.password.select();
			return false;
		}

		document.f.action = "user_modify_action.jsp";
		document.f.method = "POST";
		document.f.submit();
	}
	function userMain() {
		document.f.action = "user_main.jsp";
		document.f.submit();
	}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			<jsp:include page="include_common_left.jsp" />
			<!-- include_common_left.jsp end-->
		</div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->

			<!-- include_content.jsp start-->
			<div id="content">

				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>내정보 관리 - 내정보수정</b></td>
								</tr>
							</table> <!-- update Form  -->
							<form name="f" method="post">

								<table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">아이디</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left"><%=user.getUserid()%></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input type="password" style="width: 150px" name="password" value=""></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">비밀번호 확인</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input type="password" style="width: 150px" name="password2" value=""></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input type="text" style="width: 150px" name="name" value="<%=user.getName()%>"></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이메일</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input type="text" style="width: 150px" name="email" value="<%=user.getEmail()%>"></td>
									</tr>
								</table>
							</form> <br>

							<table width=590 border=0 cellpadding=0 cellspacing=0>
								<tr>
									<td align=center><input type="button" value="내정보수정" onClick="userModify()">&nbsp;
									<input type="button" value="메인" onClick="userMain()"></td>
								</tr>
							</table>

						</td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>
