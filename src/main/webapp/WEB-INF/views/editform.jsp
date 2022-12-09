<%--<%@ page import="com.example.BoardDAO" %>&lt;%&ndash;<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>&ndash;%&gt;--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8"%>--%>
<%--<%@page import="com.example.BoardVO, com.example.BoardDAO"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <title>Edit Form</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<%--%>
<%--  BoardDAO memberDAO = new BoardDAO();--%>
<%--  String id=request.getParameter("id");--%>
<%--  BoardVO u=memberDAO.getBoard(Integer.parseInt(id));--%>
<%--  request.setAttribute("vo", u);--%>
<%--%>--%>

<%--<h1>Edit Form</h1>--%>
<%--<form action="editpost.jsp" method="post" enctype="multipart/form-data">--%>
<%--  <input type="hidden" name="sid" value="<%=u.getSid() %>"/>--%>
<%--  <table>--%>
<%--    <tr><td>UserID:</td><td><input type="text" name="userid" value="<%= u.getUserid()%>"/></td></tr>--%>
<%--    <tr><td>UserName:</td><td><input type="text" name="username" value="<%= u.getUsername()%>"/></td></tr>--%>
<%--    <tr><td>Email:</td><td><input type="text" name="email" value="<%= u.getEmail()%>"/></td></tr>--%>
<%--    <tr><td>Photo:</td><td><input type="file" name="photo" value="<%= u.getPhoto()%>"/></td></tr>--%>
<%--    <tr><td>Age:</td><td><input type="text" name="age" value="<%= u.getAge()%>"/></td></tr>--%>
<%--    <tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail" value="<%= u.getDetail()%>"></textarea></td></tr>--%>

<%--    <tr><td colspan="2"><input type="submit" value="Edit Post"/>--%>
<%--      <input type="button" value="Cancel" onclick="history.back()"/></td></tr>--%>
<%--  </table>--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form modelAttribute="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <h1>Edit Page</h1>

    <table id="edit">
        <tr><td>category</td><td><form:input path="category" /></td></tr>
        <tr><td>title</td><td><form:input path="title" /></td></tr>
        <tr><td>writer</td><td><form:input path="writer" /></td></tr>
        <tr><td>content</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
    </table>
    <input type="submit" value="Edit">
    <input type="button" value="Cancel" onclick="history.back()"/>
</form:form>
</body>