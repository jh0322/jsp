<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.mvc2.model.MemberDAO" %>
<%@ page import="com.example.mvc2.model.MemberVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberDAO dao = new MemberDAO();
    ArrayList<MemberVO> list = dao.memberList();
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
<table class="table table-bordered">
    <tr>
        <td>번호</td>
        <td>아이디</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>나이</td>
        <td>이메일</td>
        <td>전화번호</td>
    </tr>
    <% for (MemberVO vo : list) { %>
    <tr>
        <td><%=vo.getNum()%></td>
        <td><%=vo.getId()%></td>
        <td><%=vo.getPassword()%></td>
        <td><%=vo.getName()%></td>
        <td><%=vo.getAge()%></td>
        <td><%=vo.getEmail()%></td>
        <td><%=vo.getPhone()%></td>
    </tr>
    <% } %>
</table>
</body>
</html>
