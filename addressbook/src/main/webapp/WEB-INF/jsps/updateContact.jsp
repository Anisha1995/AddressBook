<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

</head>
<body>
<br>
<div style="padding-left: 400px">

<h1>Update Contact</h1>
<br>
<form action="updateCont" method="post">
<table>
				<tr>
					<td>Id</td>
					<td><input  type="text" name="id"  value="${contact.id}" readonly class="form-control" /> </td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstname"  value="${contact.firstname}" class="form-control" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastname"  value="${contact.lastname}" class="form-control"  /> </td>
				</tr>
				<tr>
					<td>Email</td>
				
					<td>	<input type="text"name="email" value="${contact.email}" class="form-control"  /></td>
				</tr>
				<tr>
					<td>Phone Number </td>
					<td><input type="text" name="phonenumber" value="${contact.phonenumber}" class="form-control"  />  </td>
				</tr>
				<tr>
					<td><input type="submit" value="save" class="btn btn-primary" /></td>
				</tr>
				
				</table>
	
	</form>
	
	<br>
	<a href="displayContacts">Back</a>
	<br>
</div>
</body>
</html>