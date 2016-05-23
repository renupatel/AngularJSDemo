<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%
String uname = request.getParameter("t1");
String pword = request.getParameter("t2");

		try{
			 Class.forName("oracle.jdbc.OracleDriver");
			 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:test","system", "Renuka15");
			 Statement st = con.createStatement();
			 String sql = "select * from login where username='"+uname+"' and password='"+pword+"'";
			 ResultSet rs = st.executeQuery(sql);
			 
			 if(rs.next()){
			 	out.println(uname+" is Valid User");
			  }else {
				out.println(uname+" is InValid User");
			  }
		 
		}catch(SQLException sqle){sqle.printStackTrace();}

%>