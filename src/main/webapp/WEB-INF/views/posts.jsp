<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8"%>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*, java.io.File"%>
<%--<%@page import="com.oreilly.servlet.*" %>--%>
<%--<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>게시판</h1>

<form method="post" action="../login/logout">
    <button type='submit'>logout</button>
</form>

<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>category</th>
        <th>title</th>
        <th>writer</th>
        <th>content</th>
        <th>regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>

</table>
<br/><button type="button" onclick="location.href='add'">Add New Data</button>
</body>
</html>