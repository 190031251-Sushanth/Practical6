<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "java.io.*,java.util.*,javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
			String name = request.getParameter("name"); 
			String password = request.getParameter("password");
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");

			String sql = "SELECT * FROM prac6 WHERE name = ? AND password = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1,name);
			ps.setString(2,password);
			
			ResultSet rs = ps.executeQuery();
			System.out.println("Login Successfull!");
			if(rs.next()) {
				out.println("Login successful");
			}
			else
			{
				out.println("Login Unsuccesful");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>
</body>
</html>