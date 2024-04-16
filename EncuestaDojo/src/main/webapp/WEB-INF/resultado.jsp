<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
 <h2>Submitted Info</h2>
    <p>Name: ${name}</p>
    <p>Location: ${location}</p>
    <p>Favorite Language: ${language}</p>
    <p>Comments: ${comment}</p>
    <div>
	<a href="javascript:history.go(-1)">Go back</a>
	</div>
</body>
</html>