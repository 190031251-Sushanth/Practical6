<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "java.io.*,java.util.*,javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Practical 6 INLAB</title>
</head>
<body>
<%
try{
	String name= request.getParameter("name");
	String email= request.getParameter("email");
	String mobile= request.getParameter("mobile");
	String password= request.getParameter("password");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
	System.out.println("connected");
	String sql="insert into prac6 values(?,?,?,?)";
	PreparedStatement pst=con.prepareStatement(sql);
	pst.setString(1, name);
	pst.setString(2, email);
	pst.setString(3, mobile);
	pst.setString(4, password);
	int count=pst.executeUpdate();
	if(count>0)
	{
		out.println("Register successful");
	}
	else
	{
		out.println("Register Unsuccesful");
	}

	}
catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>