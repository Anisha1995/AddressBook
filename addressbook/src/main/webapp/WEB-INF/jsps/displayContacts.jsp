<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Contact</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

</head>
<body>
<h2>Display Contact</h2>
	<table class="table">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		
		<c:forEach items="${contacts}" var="contact">
			<tr>
				<td>${contact.id}</td>
				<td>${contact.firstname}</td>
				<td>${contact.lastname}</td>
				<td>${contact.email}</td>
				<td>${contact.phonenumber}</td>
				<td><a href="deleteContact?id=${contact.id}">Delete</a></td>
				<td><a href="showUpdate?id=${contact.id}">Edit</a></td>
				
			</tr>
			
		    
	</c:forEach>
	</table>
	<a href="showCreate">Add Contact</a>
</body>
</html>