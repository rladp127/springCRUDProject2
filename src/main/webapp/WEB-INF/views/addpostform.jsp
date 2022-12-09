<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>

<form action="addok" method="post">
  <table id="edit">
    <tr><td>category:</td><td><input type="text" name="category"></td></tr>
    <tr><td>title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Username:</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
  </table>

    <button type="button" onclick="location.href='list'">View All Records</button>
    <button type="submit">register</button>
</form>

</body>
</html>