<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDao"%>
<%@page import="com.conn.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>

</head>
<body>


	<%@include file="navbar.jsp"%>

	<div class="container p-3 ">
		<div class="card border border-dark">
			<div class="card-body border border-dark">

				<p class="text-center fs-1">All Student Detail</p>
				<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${ succMsg}</p>
					<c:remove var="succMsg" />
				</c:if>

				<c:if test="${not empty errorMsg }">
					<p class="text-center text-success">${ errorMsg}</p>
					<c:remove var="errorMsg" />
				</c:if>
				<table class="table border border-dark ">
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

						<%
						StudentDao dao = new StudentDao(DBConnection.getConn());
						List<Student> list = dao.getAllStudent();
						for (Student s : list) {
						%>

						<tr>
							<th scope="row"><%=s.getFullname()%></th>
							<td><%=s.getDob()%></td>
							<td><%=s.getAddress()%></td>
							<td><%=s.getQualification()%></td>
							<td><%=s.getEmail()%></td>
							<td><a href="edit_student.jsp?id=<%=s.getId()%>"
								class="btn btn-sm btn-primary">Edit</a>
								
								 <a href="delete?id=<%=s.getId() %>"
								class="btn btn-sm btn-danger ms-1">Delete</a></td>
						</tr>

						<%
						}
						%>


					</tbody>
				</table>
			</div>
		</div>

	</div>
</body>
</html>