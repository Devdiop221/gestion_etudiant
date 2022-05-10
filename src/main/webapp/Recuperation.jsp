<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="model.Etudiant"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="ListeEtudiant.jsp">cliquer ici pour voire la liste des etudiants</a> <br>

<%
Etudiant etudiant = new Etudiant();
etudiant.setMatricule(Integer.parseInt(request.getParameter("Matricule")));
etudiant.setNom(request.getParameter("Nom"));
etudiant.setPrenom(request.getParameter("Prenom"));
etudiant.setClasse(request.getParameter("Classe"));
etudiant.setFiliere(request.getParameter("Filiere"));
etudiant.setMoyenne(Float.parseFloat(request.getParameter("Moyenne")));
%>



Le matricule est <%= etudiant.getMatricule() %> <br>
Le nom est de <%= etudiant.getNom() %> <br>
Le prenom est de <%= etudiant.getPrenom() %> <br>
La classe est <%= etudiant.getClasse() %> <br>
La filiere est <%= etudiant.getFiliere() %> <br>
La moyenne est de <%= etudiant.getMoyenne() %>


<%
	try {
		String strClassName="com.mysql.jdbc.Driver";
		Class.forName(strClassName);
		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/j2ee?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
		Statement state = connect.createStatement();
		String res = "INSERT INTO j2ee.etudiant(matricule,nom,prenom,classe,filiere,moyenne)VALUES("+etudiant.getMatricule()+",'"+etudiant.getNom()+"','"+etudiant.getPrenom()+"','"+etudiant.getClasse()+"', '"+etudiant.getFiliere()+"',"+etudiant.getMoyenne()+")";
		state.executeUpdate(res);
	}

	catch (Exception e) {
		
		e.getMessage();
		
	}
%>

</body>
</html>