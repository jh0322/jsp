<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- 두수사이의 총합을 구하는 메서드 --%>
<%!
    public int hap(int s, int e) {
        int sum=0;
        for (int i=s; i<=e; i++) {
            sum += i;
        }
        return sum;
    }
%>
<%
    int sum=0;
    for (int i=1; i<=100; i++) {
        sum+=i;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td>1~100까지의 총합</td>
        <td><%=sum%></td>
    </tr>
    <tr>
        <td>55~350까지의 총합</td>
        <td><%=hap(55, 350)%></td>
    </tr>
</table>
</body>
</html>
