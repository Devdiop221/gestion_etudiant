<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="Index.jsp">cliquer ici pour inserer des etudiants </a>
<table border="2">
		<tr>
			<td>Matricule</td>
			<td>Nom</td>
			<td>Prenom</td>
			<td>Classe</td>
			<td>Filiere</td>
			<td>Moyenne</td>
		</tr>



<%
	try {
		String strClassName="com.mysql.jdbc.Driver";
		Class.forName(strClassName);
		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/j2ee?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
		Statement state = connect.createStatement();
		String res = "select * from j2ee.etudiant";
		ResultSet rs1 = state.executeQuery(res);
		
		while(rs1.next()){
			%>
			<tr>
				<td> <%= rs1.getInt("matricule") %></td>
				<td> <%= rs1.getString("nom") %></td>
				<td> <%= rs1.getString("prenom") %></td>
				<td> <%= rs1.getString("classe") %></td>
				<td> <%= rs1.getString("filiere") %></td>
				<td> <%= rs1.getFloat("moyenne") %></td>
			</tr>
			
			  
			<% 
		}
		rs1.close();
		connect.close();
		state.close();
	}

	catch (Exception e) {
		
	out.print(e.getMessage());	
	
	}
%>

</table>
</body>
</html>