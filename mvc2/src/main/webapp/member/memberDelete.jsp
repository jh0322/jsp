<%@ page import="com.example.mvc2.model.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));
    MemberDAO dao = new MemberDAO();
    int cnt = dao.memberDelete(num);

    if (cnt > 0) {
        response.sendRedirect("memberList.jsp");
    } else {
        throw new ServletException("not delete");
    }
%>
