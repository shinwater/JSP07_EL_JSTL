<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<font color="green">
	<%--JSTL(JSP standard Tag Library)
		- JSP 페이지에서 스크립트릿과 HTML 코드가 뒤섞이게 되는 현상이 발생.
			이렇게 뒤섞인 코드는 알아보기가 쉽지 않게 되는 단점이 발생함. 따라서 가독성이 낮아짐.
		- JSP 페이지에서 스크립트릿에 들어가는 내용 중에 논리적인 판단, 반복 처리, 포맷 처리 등을
			HTML 태그처럼 처리할 수 있도록 표준으로 만들어서 정의한 것이 JSTL 라이브러리.
		- JSTL을 사용하기 위해서는 라이브러리 파일이 필요함.
			* jstl.jar, standard.jar
			
	--%>
	
	<%--기본적인 JSTL 태그(츨력은 EL을 사용) 
		1. 변수 태그(set)
			<c:set var="변수명" value="값">
			예) <c:set var="su" value="10"> int su = 10
			예) <c:set var="test" value="Hello"> String test = "Hello"
		2. 출력 태그(out)
			<c:out value="변수명">
			예) <c:out value="test"> : test라는 변수안에 있는 value값을 출력해주세용
		3. 삭제 태그(remove)
			<c:remove var="변수명"> : 변수명 안의 value만 지우는 태그!
			예) <c:remove var="test">
		4. 조건 처리(if문) : else문이 없당.
			<c: if test="조건식" var="변수명">
		5. 조건 처리(choose문) : switch~case 문과 유사
			<c: choose>
				<c:when text="조건식1"> 조건식1이 참인 경우 실행문장 </c:when>
				<c:when text="조건식2"> 조건식2이 참인 경우 실행문장 </c:when>
				<c:when text="조건식3"> 조건식3이 참인 경우 실행문장 </c:when>
				<c:when text="조건식4"> 조건식4이 참인 경우 실행문장 </c:when>
				<c:otherwise>상기 조건식 이외의 경우 실행문장</c:otherwise>
			</c: choose>
		6. 반복문(forEach문) : for문
			<c:forEach begin="시작값" end="끝값" step="증감값" var="변수명">
			<c:forEach items="객체명" var="변수명"> //단축 for문
	--%>
	
	<h2>JSTL의 기본적인 태그들</h2>
	<h3><%--설명 내용 중에 1~3번 --%>
	
		<c:set var="test" value="Hello JSTL!!!"></c:set>
		JSTL 값 출력: <c:out value="${test }"></c:out><br/>
		JSTL 값 출력: <c:out value="test"></c:out><br/>
		값 삭제 : <c:remove var="test"/><br/>
		삭제 후 값 출력: <c:out value="${test }"></c:out><br/>
		<c:set var="test" value="Hello JSTL!!!"></c:set>
		JSTL 값 출력: <c:out value="${test }"></c:out><br/>
		<hr/>
		
		<c:if test="${10>5 }" var="k"></c:if>
		조건식 결과: <c:out value="${k }"/>
		<hr/>
		
		<%-- test2의 값이 1이면 합격, 2이면 불합격, 나머지는 미발표 --%>
		<c:set var="test2" value="3"/>
		<c:choose>	
			<c:when test="${test2==1 }">결과: 합격입니당</c:when>
			<c:when test="${test2==2 }">결과: 불합격입니당</c:when>
			<c:otherwise>★☆미.발.표☆★</c:otherwise>
		</c:choose>
		
		<hr/>
		
		<%--반복문을 이용하여 1~100까지 출력 --%>
		<c:forEach begin="1" end="100" step="1" var="i">
			54iyuy
			${i }&emsp;	
		</c:forEach>
		<hr/>
		
		배열의 값들을 출력해보자. 
		<%
			String[] str = {"홍길동","이순신","유관순","김유신","김연아"};
			pageContext.setAttribute("list", str);
		%>
		결과 : <c:forEach items="${list }" var="array">
				${array}&emsp;
			 </c:forEach>
	
	</h3>
	
	</font>
	
	</div>
</body>
</html>