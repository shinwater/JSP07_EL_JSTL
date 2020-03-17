<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>표현언어(EL)으로 scope내용 출력</h2>
	<h3>
		page : ${pageScope.p } == ${p}<br/>
		request : ${requestScope.r } == ${r }<br/>
		session : ${sessionScope.s } == ${s }<br/>
		application : ${applicationScope.a } ==${a }<br/>
		request : ${requestScope.p } ==${p }<br/>
	</h3>
	<hr/>
	
	<!-- request.getRD~~~ 로 할때랑 script로 할떄랑 차이점알아봐....미래의신수집ㄴ... -->
</body>
</html>