<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
th {
	border: 1px solid black;
}

td, tr {
	border: 0.5px solid black;
	text-align: center;
}
</style>
</head>
<body>
	<h3 align="center">가입정보</h3>
	<div style="width: 300px; margin: 0 auto 0 auto">
		<table style="width: 280px; padding: 0 10px 0 10px">
			<tr>
				<th>항목</th>
				<th>입력값</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td>guard</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>1234</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>김경호</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>서울</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>남(여)</td>
			</tr>
			<tr>
				<td>직업</td>
				<td>회사원</td>
			</tr>
			<!-- 취미 0개  -->
			<tr>
				<td rowspan="1">취미</td>
				<td>없음</td>
			</tr>
			<!-- 취미 1개  -->
			<tr>
				<td rowspan="1">취미</td>
				<td>독서</td>
			</tr>
			<!-- 취미 2개  -->
			<tr>
				<td rowspan="2">취미</td>
				<td>독서</td>
			</tr>
			<tr>
				<td>승마</td>
			</tr>
			<!-- 취미 3개  -->
			<tr>
				<td rowspan="3">취미</td>
				<td>독서</td>
			</tr>
			<tr>
				<td>승마</td>
			</tr>
			<tr>
				<td>영화</td>
			</tr>
			<!-- 취미 4개  -->
			<tr>
				<td rowspan="4">취미</td>
				<td>독서</td>
			</tr>
			<tr>
				<td>승마</td>
			</tr>
			<tr>
				<td>영화</td>
			</tr>
			<tr>
				<td>운동</td>
			</tr>
		</table>
	</div>
</body>
</html>
<!-- 
out.println("<!DOCTYPE html>");
out.println("<html>");
out.println("<head>");
out.println("<meta charset='UTF-8'>");
out.println("<title>Insert title here</title>");
out.println("<style type='text/css'>");
out.println("th{");
out.println("border: 1px solid black;");
out.println("}");
out.println("td,tr{");
out.println("border: 0.5px solid black;");
out.println("text-align: center;");
out.println("}");
out.println("</style>");
out.println("</head>");
out.println("<body>");
out.println("<h3 align='center'>가입정보</h3>");
out.println("<div style='width:300px;margin: 0 auto 0 auto'>");
out.println("<table style='width:280px;padding: 0 10px 0 10px'>");
out.println("<tr><th>항목</th><th>입력값</th></tr>");
out.println("<tr><td>아이디</td><td>guard</td></tr>");
out.println("<tr><td>패스워드</td><td>1234</td></tr>");
out.println("<tr><td>이름</td><td>김경호</td></tr>");
out.println("<tr><td>주소</td><td>서울</td></tr>");
out.println("<tr><td>성별</td><td>남(여)</td></tr>");
out.println("<tr><td>직업</td><td>회사원</td></tr>");
out.println("<tr><td rowspan='3'>취미</td><td>독서</td></tr>");
out.println("<tr><td>승마</td></tr>");
out.println("<tr><td>영화</td></tr>");
out.println("</table>");
out.println("</div>");
out.println("</body>");
out.println("</html>");

 -->



