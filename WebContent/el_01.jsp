<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		EL(Expression Language)
			- 표현 언어
			- JSP 2.0 이후 버전부터 사용 가능함.
			- 라이브러리 없이 사용이 가능함.
			- 자바코드를 사용해야 했던 모든 곳에 표현 언어를 사용할 수 있음.
			- 예) <%=변수%>  ====> ${변수(수식)}
			- 연산자
				* 산술연산자 : +, -, *, /, %
				* 관계연산자 : ==, !=, >, <, >=,<=
				* 논리연산자 : $$, ||, !
			-표현언어에서 제공하는 내장 객체 
				* pageScope : 모든 page 영역 객체들에 대한 컬렉션
				* requestScope : 모든 request 영역 객체들에 대한 컬렉션
				* sessionScope : 모든 session 영역 객체들에 대한 컬렉션
				* applicationScope : 모든 application 영역 객체들에 대한 컬렉션
				* param : 모든 request 파라미터들을 문자열로 가진 컬렉션
				* paramValues : 모든  request 파라미터들을 파라미터당 문자열 배열로 가진 컬렉션
				* pageContext : 현재 page를 위한 컬렉션
	 --%>

	<h2>JSP 표현식 산술 연산 사용 예제</h2>
	<h3>
		15 + 7 =
		<%=15 + 7%>
		<br /> 15 - 7 =
		<%=15 - 7%>
		<br /> 15 * 7 =
		<%=15 - 7%>
		<br /> 15 / 7 =
		<%=15 - 7%>
		<br /> 15 % 7 =
		<%=15 % 7%>
		<br />
	</h3>

	<hr />

	<h2>표현언어(EL)에서 제공하는 산술 연산 사용 예제</h2>
	<h3>
		15 + 7 = ${15+7} <br/>
		15 - 7 = ${15-7} <br/>
		15 * 7 = ${15*7} <br/>
		<%--나누기는 우선 피연산자를 double형으로 변환한 뒤 연산을 수행 --%>
		15 / 7 = ${15/7} <br/>
		15 % 7 = ${15%7} <br/>
	
		<hr/>
		\${15+7} = ${15+7} <br/> 
		\${15-7} = ${15-7} <br/> 
		\${15*7} = ${15*7} <br/> 
		\${15/7} = ${15/7} <br/> 
		\${15%7} = ${15%7} <br/> 
		
		\${15 div 7} = ${15 div 7} <br/> 
		\${15 mod 7} = ${15 mod 7} <br/> 
	</h3>
	<hr/>
	<h2>표현언어(EL)에서 제공하는 관계 연산 사용 예제</h2>
	<h3>
		<%-- 결과값은 boolean타입 --%>
		\${15 == 7} = ${15 == 7} <br/> 
		\${15 != 7} = ${15 != 7} <br/> 
		\${15 >= 7} = ${15 >= 7} <br/> 
		\${15 > 7} = ${15 > 7} <br/> 
		\${15 <= 7} = ${15 <= 7} <br/> 
		\${15 < 7} = ${15 < 7} <br/> 
		
		<hr/>
		\${15 ge 7} = ${15 ge 7} <br/> 
		\${15 gt 7} = ${15 gt 7} <br/> 
		\${15 le 7} = ${15 le 7} <br/> 
		\${15 lt 7} = ${15 lt 7} <br/> 
	</h3>	
	
	<hr/>
	<h2>표현언어(EL)에서 제공하는 논리 연산 사용 예제</h2>
	<h3>
		${(15 >= 7) && (15 > 7)} <br/> 
	</h3>
	<%-- 표현언어(EL)에서 제공하는 empty 사용 예제--%>
	
	<%
		int k = 15 + 7;
	
		pageContext.setAttribute("K", k);
		//pageContext는 현재페이지에서만 유효. 페이지이동하면 null
		pageContext.setAttribute("p", 100);
		//request는 get으로 받으면 더이상 유효하지않아짐.. 끝?
		request.setAttribute("r", 1000);
		//session은 웹브라우저가 종료될때까지 유효
		session.setAttribute("s", 10000);
		//application은 웹서버가 종료될때까지 유효!
		application.setAttribute("a", 100000);
		request.setAttribute("p", 500);
		
		RequestDispatcher rd = request.getRequestDispatcher("el_scope.jsp");
		rd.forward(request, response);
		
	%>
	
	<h3>
		결과 ==> <%=k %><br/>
		<%-- scope(현재페이지)에 k라는 이름의 속성이 없으므로 결과표시 안함. --%>
		결과(EL) ==> ${K}<br/>
	
	</h3>
</body>
</html>