<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Books</title>
</head>
<body>
<h3> Order Books</h3>

<form action= OrderBookServlet>
UserId:<input type="number" name="userid" required />
<br/>

Select Book:
<select name="bookid" required>
<option value="1">Core Java</option>
<option value="2">MySQL</option>
</select>
<br/>

Quantity:<input type="number" name="quantity" min="1" required />
<br/>


<button type ="submit">Submit</button>

</form>
</body>
</html>