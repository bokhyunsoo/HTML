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
//스트링 변수(문자열) name에 김철수를 저장
//프로그래머가 작성한 문장을 기계어로 변환(컴파일러)
String name = "김철수"; //문장의 끝에 세미콜론
//out.println("이름:"+name+"<br>");
%>

이름 : <%=name%><br>
이름 : <% out.println(name); %><br>
이름 : 20

</body>
</html>