<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//한글인코딩 방식을 변경(기본인코딩 iso-8859-1)
//기본인코딩 iso-8859-1 서유럽언어를 한국어로
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String age = request.getParameter("age");
int days = Integer.parseInt(age) * 365;
%>
<!-- name 변수에 저장된 값을 출력 -->
 이름 : <%=name%><br>
 나이 : <%=age%><br>
 살아온 날 : <%=days%><br>
</body>
</html>