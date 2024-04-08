<%@ page import="com.example.mvc2.model.MyCalc" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MyCalc c = new MyCalc();
    int v = c.hap(1,300);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td>1~300까지의 총합</td>
        <td><%=v%></td>
    </tr>
</table>
</body>
</html>
