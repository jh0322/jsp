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
<script>
    function deleteFn(num) {
        location.href = "memberDelete.jsp?num="+num;
    }
</script>
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
        <td><a href="memberContent.jsp?num=<%=vo.getNum()%>"><%=vo.getId()%></a></td>
        <td><%=vo.getPassword()%></td>
        <td><%=vo.getName()%></td>
        <td><%=vo.getAge()%></td>
        <td><%=vo.getEmail()%></td>
        <td><%=vo.getPhone()%></td>
        <td><input type="button" value="삭제" class="btn btn-danger" onclick="deleteFn(<%=vo.getNum()%>)"></td>
    </tr>
    <% } %>
    <td colspan="8" align="right"><input type="button" value="회원가입" class="btn btn-primary" onclick="location.href='memberRegister.html'"></td>
</table>
</body>
</html>
