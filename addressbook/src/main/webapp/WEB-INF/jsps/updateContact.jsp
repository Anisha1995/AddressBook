<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact</title>

</head>
<body>
<form action="updateCont" method="post">
	<pre>
		Id:   <input  type="text" name="id"  value="${contact.id}" readonly /> 
		<br>
		First Name: <input type="text" name="firstname"  value="${contact.firstname}" />
		<br> 
		Last Name: <input type="text" name="lastname"  value="${contact.lastname}" /> 
		<br>
		Email: <input type="text"name="email" value="${contact.email}"  />
		<br> 
		Phone Number <input type="text" name="phonenumber" value="${contact.phonenumber}"  /> 
		<br>
		  <br> 
	  <input type="submit" value="save" />
  </pre>
	</form>
	${msg}
	<br>
	<a href="displayContacts">View All</a>
	<br>
</body>
</html>