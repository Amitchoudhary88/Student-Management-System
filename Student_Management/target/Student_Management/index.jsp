<%@page import="com.conn.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>

</head>
<body>


	<%@include file="navbar.jsp"%>

	<div class="container p-3">
		<div class="card">
			<div class="card-body">

				<p class="text-center fs-1">All Student Detail</p>
				<table class="table  ">
					<thead class="table-warning #ffc107 ">
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Address</th>
							<th scope="col">Qualification</th>
							<th scope="col">Email</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">Amit Kumar</th>
							<td>08/02/2001</td>
							<td>Delhi</td>
							<td>BCA</td>
							<td>amit.basbutti@gmail.com</td>
							<td><a href="edit_student.jsp"
								class="btn btn-sm btn-primary">Edit</a> <a href=""
								class="btn btn-sm btn-danger ms-1">Delete</a></td>
						</tr>

						<tr>
							<th scope="row">Amit Kumar</th>
							<td>08/02/2001</td>
							<td>Delhi</td>
							<td>BCA</td>
							<td>amit.basbutti@gmail.com</td>
							<td><a href="" class="btn btn-sm btn-primary">Edit</a> <a
								href="" class="btn btn-sm btn-danger ms-1">Delete</a></td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>

	</div>
</body>
</html>