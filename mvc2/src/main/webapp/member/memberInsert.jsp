<%@ page import="com.example.mvc2.model.MemberVO" %>
<%@ page import="com.example.mvc2.model.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 파라미터 수집(VO)
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    MemberVO vo = new MemberVO(id, password, name, age, email, phone);

    //Model 연동부분
    MemberDAO dao = new MemberDAO();
    int cnt = dao.memberInsert(vo);
    if (cnt > 0) {
        //가입성공
        response.sendRedirect("memberList.jsp");
    } else {
        //가입실패 -> 예외객체를 만들어서 WAS에게 던지자.
        throw new ServletException("not insert");
    }
%>
