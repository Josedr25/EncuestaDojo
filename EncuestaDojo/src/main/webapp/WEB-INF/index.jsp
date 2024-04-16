<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojo Survey</title>
</head>
<body>
	<form action="/resultado" method="post">
	<div>
	<label for= "name">Your name:</label>
	<input type="text" id="name" name="name" required>
	</div>
	
	<div>
		<label for="location">Dojo Location:</label>
		<select name="location">
		<c:forEach items="${locations}" var="loc">
			<option value="<c:out value='${loc}'/>"><c:out value='${loc}'></c:out>
				</option>
		</c:forEach>
		</select>
	</div>	
	
	<div><label for="language">Favorite Language:</label>
		<select name="language">
			<c:forEach items="${languajes}" var="lan">
				<option value="<c:out value='${lan}'/>"><c:out value='${lan}'></c:out>
				</option>
			</c:forEach>
		</select>
	</div>
	<div>
		<label for="comment">Comment: (optional)</label><br>
		<textarea id="comment" name="comment" required></textarea>
	</div>
	
	<div>
	<input type="submit" value="Submit">
	</div>
	</form>
</body>
</html>