<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="login" action="/login" method="post">
<center>
<h1><font color = Pink>YOUNG FOREVER</font></h1>
<table border=1>
 <tr>
  <td colspan="2" align=center>
  <b><font size=5 color = Gray>로그인페이지</font></b>
  </td>
 </tr>
 <tr><td>아이디 : </td><td><input type="text" name="id"></td></tr>
 <tr><td>비밀번호 : </td><td><input type="password" name="pwd"></td></tr>
 <tr>
  <td colspan="2" align=center>
   <input type="submit" value="로그인">
  </td>
</tr>
</table>
</center>
</form>
</body>
</html>