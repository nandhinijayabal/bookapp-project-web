<!DOCTYPE html>
<%@page import="model.Book"%>
<%@page import="java.util.List"%>
<%@page import="dao.BookDAO"%>
<html>
<head>

<title>List Books</title>
</head>
<body>
	<h3>List Books</h3>

	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Price</th>
				<th>Published Date</th>
				<th>Author Name</th>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>java</td>
				<td>Rs.200</td>
				<td>2017-06-13</td>
				<td>Suresh</td>
			</tr>

			<tr>
				<td>2</td>
				<td>MySQL</td>
				<td>Rs.300</td>
				<td>2017-06-12</td>
				<td>Suresh</td>
			</tr>

		</tbody>
		

	</table>
</body>

		<%
		
		BookDAO bookDAO =new BookDAO();
		List<Book>booklist = bookDAO.listbook();
		out.println("Books:"+ booklist);
		
		%>
<%
for (Book b: booklist)
{
	out.println(b.getId() +"-"+ b.getName());
}
}
%>
</html>