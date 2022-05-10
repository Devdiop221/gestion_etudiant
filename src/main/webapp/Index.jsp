<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Formulaire </h1>
		
		<form method="post" action="Recuperation.jsp">
		<table>
		
		<tr> 
		
		<td><label>Matricule :</label></td> 
		
		<td><input type="text" name="Matricule"></input></td>
		
		 </tr>
		
		<tr> 
		
		<td><label>Nom :</label></td>
		
		 <td>	<input type="text" name="Nom"></input></td>
		
	
		</tr>
		
				<tr> 
		
		<td><label>Prenom :</label></td> 
		
		<td><input type="text" name="Prenom"></input></td>
		
		 </tr>
		
		<tr> 
		
		<tr> 
		
		 <td><label>Classe :</label></td>
		 
		  <td><input type="text" name="Classe"></input></tr></td>
		
		
		<tr> 
		
		<tr> 
		
		 <td><label>Filiere :</label></td>
		 
		  <td><input type="text" name="Filiere"></input></tr></td>
		
		
		<tr> 
		
		<tr> 
		
		 <td><label>Moyenne :</label></td>
		 
		  <td><input type="text" name="Moyenne"></input></tr></td>
		
		
		<tr> 
		 
		  <td><input type="submit" value="Valider" name="valider"></input></td>
		  <td><input type="reset" value="Annuler" name="annuler"></input></td>
		
		</tr>
		
		
		</form>
		
		</table>
</body>
</html>