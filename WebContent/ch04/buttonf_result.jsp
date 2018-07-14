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
//Integer.valueOf(스트링) 스트링을 숫자로 변환
//Integer.parseInt(스트링)
//F3 소스보기
	int price = Integer.valueOf(request.getParameter("price"));
	int amount = Integer.parseInt(request.getParameter("amount"));
	int money = price * amount;
%>
가격 : <%=price%><br>
수량 : <%=amount%><br>
금액 : <%=money%><br>
</body>
</html>