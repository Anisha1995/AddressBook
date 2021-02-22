<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Contact</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<style type="text/css">
				table{ 
			      border-collapse: collapse; 
	            } 
	            th { 
	                background-color:green; 
	                Color:white; 
	            } 
	            th, td { 
	                width:150px; 
	                text-align:center; 
	                padding:5px 
	              
	            } 
</style>
</head>
<body>
<h1 style="text-align: center">Address Book</h1>
		<div style="margin-left: 350px;">
		<form action="savCont" method="post">
			
				<table>
			
				<tr>
					<td>First Name</td>
					<td><input type="text"name="firstname" class="form-control" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastname" class="form-control"/> </td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text"name="email" class="form-control" required/></td>
				</tr>
				<tr>
					<td>Phone Number </td>
					<td><input type="number" name="phonenumber" class="form-control" placeholder="1234556780" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" /> </td>
				</tr>
				<tr>
					<td><input type="submit" value="save" class="btn btn-primary" /></td>
				</tr>
				
				</table>
				
		
		
			</form>
		</div>
		<div style="margin-left: 550px;">
			${msg}
			<br>
			<a href="displayContacts">View All</a>
			<br>
		</div>
	
	
</body>
</html>