<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 1. JDBC 드라이버 로드
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. Connection 객체 생성
	
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe");
	
	// 3. PreparedStatement 객체 생성
	
	String sql = "select * from student";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	// 4. 쿼리 수행
	
	ResultSet rs = pstmt.executeQuery();
	rs.next(); //커서를 다음 줄로 반환
%>
<center>
<table border=1 width=300>
 <tr align=center><td colspan=2>회원목록</td></tr>
 <%while(rs.next()){ %>
  <tr align=center>
   <td>
    <a href="detail.jsp?id=<%=rs.getString("id") %>">
     <%=rs.getString("id") %>
    </a>
   </td>
   <td><a href="delete?id=<%=rs.getString("id") %>">삭제</a></td>
  </tr>
 <%} %>
</table>
</center>
<%
	// 6. 자원 반납
	pstmt.close();
	con.close();
%>
</body>
</html>