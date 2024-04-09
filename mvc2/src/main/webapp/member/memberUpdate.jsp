<%@ page import="com.example.mvc2.model.MemberDAO" %>
<%@ page import="com.example.mvc2.model.MemberVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    //파라미터 수집(VO)
    int num = Integer.parseInt(request.getParameter("num"));
    int age = Integer.parseInt(request.getParameter("age"));
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    MemberVO vo = new MemberVO();
    vo.setNum(num);
    vo.setAge(age);
    vo.setEmail(email);
    vo.setPhone(phone);

    MemberDAO dao = new MemberDAO();
    int cnt = dao.memberUpdate(vo);
    if (cnt > 0) {
        //가입성공
        response.sendRedirect("memberList.jsp");
    } else {
        throw new ServletException("not update");
    }
%>