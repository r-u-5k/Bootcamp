<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
a:link {
	color: #FFFFFF
}

a:visited {
	color: #FFFFFF
}

a:hover {
	color: #00FF00
}

a.m1 {
	font-size: 9pt;
	text-decoration: underline;
	COLOR: #0000FF
}

a.m1:visited {
	font-size: 9pt;
	text-decoration: underline;
	COLOR: #0000FF
}

a.m1:active {
	font-size: 9pt;
	text-decoration: underline;
	COLOR: #0000FF
}

a.m1:hover {
	font-size: 9pt;
	text-decoration: underline;
	COLOR: #FF3300
}

a.m2 {
	font-size: 10pt;
	text-decoration: none
}

a.m2:visited {
	font-size: 10pt;
	text-decoration: none
}

a.m2:active {
	font-size: 10pt;
	text-decoration: none
}

a.m2:hover {
	font-size: 10pt;
	text-decoration: none
}

.menu {
	color: #ffffff;
	font-size: 11pt;
	font-weight: bold;
}

.t1 {
	font-size: 9pt;
	line-HEIGHT: 140%;
}

.t2 {
	font-size: 10pt;
}

.TXTFLD {
	FONT-SIZE: 9pt;
	COLOR: #000000;
	BORDER: 1x SOLID #000000
}

.TXTFLD1 {
	FONT-SIZE: 9pt;
	COLOR: #0]00000;
	BORDER: 0 SOLID #000000
}
</style>
</head>

<body>
	<br>
	<table width="80%" border="0" cellspacing="0" cellpadding="2"
		align="center">

		<tr bgcolor=#a52a2a valign="middle">
			<td height="25" class="t1" align="center"><b><font size="3"
					color="#FFFFFF">◇◇◇ HTTP프로토콜과 쿠키 및 세션 ◇◇◇</font></b></td>
		</tr>

		<tr>
			<td height="100" class="t1"><br> 웹의 근간이 되는 <font
				color="#FF0000">HTTP(HyperText Transfer Protocol)</font> 프로토콜은 웹페이지나
				이미지를 가져오는데 매우 이상적인 프로토콜이지만, 서버측 응용프로그램(CGI, Servlet JSP,
				ASP, PHP)에서 생성되는 상호 대화적인 내용을 처리하는데는 여러 가지 문제가 있다.<br>
			<br> <font color="#0000FF"> HTTP 프로토콜은 브라우저에서 요청이 있을 때 마다
					새로운 네트워크 연결이 이루어지기 때문에 사용자의 요청에 네트워크 연결이 지속되지 않으므로 클라이언트의
					요청을 서로 구분 할수 없으며, 클라이언트의 상태정보를 저장할 수 없다.
			</font><br>
			<br> 상태가 없으면 웹을 이용한 응용프로그램(대표적으로 쇼핑몰 구현)을 개발하기 어려워지는데,
				이것은 사용자가 쇼핑몰을 방문해서 원하는 상품을 선택할 때마다 이전에 선택한 상품정보는 잃어버리는 문제가
				발생하기 때문이다.<br>
			<br> <font color="#FF00FF"> 이런한 문제를 해결(상태정보 유지)하기 위해서 쿠키와	세션이 등장하게 되었다.</font> <br>
			<br></td>
		</tr>

		<tr>
			<td>
				<table width="100%" align="center" border="1" cellspacing="0"
					cellpadding="3" bordercolordark="white" bordercolorlight="#000000">
					<tr bgcolor="#556b2f">
						<td align="center" height="25" class="t1"><b><font
								size="2" color="#FFFFFF">◐ 쿠 &nbsp;키 ◑</font></b></td>
					</tr>

					<tr bgcolor="#f0fff3">
						<td align="left" class="t1"><br> 쿠키는 클라이언트의 상태 정보를 유지하기
							위한 방법으로 네스케이프에서 제안된 기술로<br> 웹응용프로그램에서 필요에 따라<br>
						<br> <font color="#0000CC"> 1) 클라이언트의 정보를 텍스트 형태로
								클라이언트(웹브라우저)에게 전송하고<font color="#FF0000">(응답메세지의 헤더를 통해)</font>,<br>
							<br> 2) 웹 브라우저는 전송받은 텍스트파일(쿠키)을 메모리에 로딩(저장)하고 있다가, 다시 쿠키를
								전송한 해당 사이트에 방문할 경우 웹서버에게 제출하도록 한다.<font
								color="#FF0000">(요청메세지의 헤더를 통해)</font><br>
							<br> 3) 웹서버는 전달 받은 쿠키의 값을 읽어 들여 적절한 작업을 수행할 수 있다.<br>
							<br>
						</font> <font color="#FF00FF"><b>● HTTP 응답 메세지의 헤더 형태</b></font><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<b><font color="#0000FF">Set-Cookie
									: name=value; expires=date; path=path; domain=domain; secure</font></b><br>
						<br> &nbsp;&nbsp;&nbsp;&nbsp;▶ <b> <font color="#0000CC">name=value</font>
						</b> : 쿠키의 이름과 값을 기술한다.([ ] ( ) = , " / ? @ : ; 등의 특수문자는 사용할 수 없다)<br>
							&nbsp;&nbsp;&nbsp;&nbsp;▶ <b> <font color="#0000CC">
									expires=date</font></b> : 쿠키의 유효기간을 명시한다. 디폴트는 현재의 브라우저가 실행되는 동안에만 유효.<br>
							&nbsp;&nbsp;&nbsp;&nbsp;▶ <b> <font color="#0000CC">path=path</font>
						</b> : 쿠키를 사용할 수 있는 URL 패스를 기술한다.<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 기술하지 안흐면 쿠키를 설정한 URL에 방문할
							경우에만 쿠키를 제출한다.<br> &nbsp;&nbsp;&nbsp;&nbsp;▶ <b><font
								color="#0000CC">domain=domain</font></b> : domain 속성을 기술하게 되면 해당
							도메인의 웹서버에 접근하는 경우에도 쿠키를 제출한다.<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 디폴트는 쿠키를 설정한 컴퓨터가 된다.<br>
							&nbsp;&nbsp;&nbsp;&nbsp;▶ <b><font color="#0000CC">secure</font></b>
							: secure라고 명시적으로 기술하면 SSL(Secure Socket Layer: 인증 암호화 프로토콜)을 사용하는
							웹서버인 경우에만 쿠키를 제출한다.<br> <br> <font color="#FF00FF"><b>●
									HTTP 요청 메세지의 헤더 형태(이름과 값의 쌍)</b></font><br> &nbsp;&nbsp;&nbsp;&nbsp;<font
							color="#0000FF"><b>Cookie : name1=value1;
									name2=value2; name3=value3;<br>
							</b><br> <b>★ 이것 아세요??<br>
							</b></font>&nbsp;&nbsp;&nbsp;&nbsp; 쿠키는 클라이언트측에 파일로 저장되는 경우도 있고, 저장되지 않은 경우도
							있다.&nbsp;<br> &nbsp;&nbsp;&nbsp;&nbsp; 웹응용프로그램에서 쿠키를 설정할 설때
							expires 속성을 설정하지 않는 경우에는 브라우저가<br> &nbsp;&nbsp;&nbsp;&nbsp;
							실행되는 경우에만 유효하지만, 만일 expire를 초단위로 설정하게 되면 파일로 저장된다.<br>
							&nbsp;&nbsp;&nbsp;&nbsp; ( 최대 300개, 최대 4KB)<br> <b><br>
						</b>&nbsp;&nbsp;&nbsp;&nbsp; 저장되는 위치는 익스플로러의 경우 Cookies 디렉토리에 저장되고,<br>
							&nbsp;&nbsp;&nbsp;&nbsp; 네스케이프의 경우 cookie.txt 파일에 저장된다.<br>
							<br> <b><font color="#CC3300" size="3"><br>
							</font></b>
							<p align="left">
								<b><font color="#CC3300" size="3">▶▶▶▶</font></b><b><font
									color="#CC3300" size="3"> 서블릿에서 쿠키 설정 절차<br> <br>
								</font></b><font color="#CC3300">1. Cookie 클래스를 이용하여 쿠키객체를 만든다.</font><br>
								&nbsp;&nbsp;&nbsp; → <b><font color="#0000CC">Cookie(String
										name, String value)</font></b>; 이름과 값을 이용하여 쿠키 생성<br> <br> <font
									color="#CC3300">2. 생성된 쿠키 객체에 속성을 부여할 수 있다.</font><br>
								&nbsp;&nbsp;&nbsp; → <font color="#0000CC"><b>setPath(String
										url)</b></font>; 쿠키가 적용될 패스를 설정하는 메소드로, 패스가 설정되면 해당되는<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 패스에 방문하는 경우에만 웹브라우저가
								웹서버에 쿠키를 제출한다.<br> &nbsp;&nbsp;&nbsp; → <b><font
									color="#0000CC">setDomain(String pattern)</font></b>; 쿠키가 사용될 도메인을
								설정하는 메소드로 해당되는 도메인에<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 속한 컴퓨터를 방문할 때 웹브라우저는
								웹서버에 쿠키를 제출한다.&nbsp;<font size="3"><br> </font>&nbsp;&nbsp;&nbsp;
								→ <b><font color="#0000CC">setValue(String newValue)</font></b>;
								새로운 쿠키의 값을 설정할 경우 사용하는 메소드이다.<font size="3"><br> </font>&nbsp;&nbsp;&nbsp;
								→ <b><font color="#0000CC">setMaxAge(int expires)</font></b>;
								쿠키가 유효한 기간을 설정한다.<font size="3"><br> </font>&nbsp;&nbsp;&nbsp;
								→ <b><font color="#0000CC">setSecure(boolean flag)</font></b>;
								보안을 설정하는 메소드로 flag가 true이면 보안성이 있는 서버(SSL)<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 인 경우에만 쿠키를 전송한다.<br>
								<font size="3"><br> </font><font color="#CC3300">3.
									쿠키를 전송한다.</font><font size="3"><br> </font>&nbsp;&nbsp;&nbsp; → <font
									color="#0000CC"><b>res.addCookie(cookie)</b></font>;
								HttpServletResponse 객체를 이용하여 웹브라우저에 쿠키를 밀어<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 넣는다.<br> <br>
								<br> <b><font color="#CC3300" size="3">▶▶▶▶</font></b><b><font
									color="#CC3300" size="3"> 서블릿에서 쿠키 정보 얻는 절차</font></b><br> <br>
								<font color="#CC3300">4. 사용자의 요청에서 모든 쿠키를 얻어온다.</font><br>
								&nbsp;&nbsp;&nbsp; → <b><font color="#0000CC">Cookie[]
										cookies = req.getCookies()</font></b>; HttpServletRequest 객체를 이용하여<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 모든 쿠키를 얻는다.<br>
								<br> <font color="#CC3300">5. 쿠키의 이름을 이용하여 원하는 쿠키를
									찾는다.</font><br> &nbsp;&nbsp;&nbsp; → <b><font color="#0000CC">String
										name = cookies[i].getName()</font></b>;<br> &nbsp;&nbsp;&nbsp; → <b><font
									color="#0000CC">if(name.equals(&quot;id&quot;)){.........};<br>
										<br>
								</font></b><font color="#CC3300">6. 쿠키의 값을 추출한다.</font><br>
								&nbsp;&nbsp;&nbsp; → <b><font color="#0000CC">String
										value = cookies[i].getValue()</font></b>;<br> <b><br> <br>
								</b><b><font color="#CC3300" size="3">▶▶▶▶</font></b><b><font
									color="#CC3300" size="3"> 서블릿에서 쿠키 삭제 방법</font></b><br> <br>
								<font color="#CC3300">7. </font><font color="#CC3300">삭제하고자
									하는 쿠키와동일한 이름의 쿠키를 생성하고 cookie.setMaxAge(0)을 호출해주면 된다.</font><br>
								&nbsp;&nbsp;&nbsp; → <b><font color="#0000CC">Cookie
										id = new Cookie(&quot;id&quot;, &quot;&quot;);<br>
								</font></b>&nbsp;&nbsp;&nbsp; → <b><font color="#0000CC">id.setMaxAge(0);<br>
								</font></b>&nbsp;&nbsp;&nbsp; → <b><font color="#0000CC">res.addCookie(id);<br>
										<br>
								</font></b>
							</p></td>
					</tr>


				</table>
			</td>
		</tr>
	</table>

	<br>
	<br>



</body>
</html>
