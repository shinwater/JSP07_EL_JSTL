<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="el_02.jsp">
		<table border="1" cellspacing="0" width="300">
			<tr>
				<th>아이디</th>
				<td><input name="id" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input name="name" /></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input name="age" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송" />&ensp;
					<input type="reset" value="다시작성" />&ensp;</td>
			</tr>

		</table>
	</form>
</body>
</html>