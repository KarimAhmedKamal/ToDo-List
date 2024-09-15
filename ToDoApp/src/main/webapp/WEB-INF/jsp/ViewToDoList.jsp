<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDo Items</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
	rel="stylesheet">

<style>
a {
	color: white;
}

a:hover {
	color: white;
	text-decoration: none;
}
</style>
</head>
<body>

	<div class="container">
		<h1 class="p-3">ToDo List</h1>

		<form:form>
			<table class="table table-border">
				<tr>
					<th>Id</th>
					<th>Title</th>
					<th>Date</th>
					<th>Status</th>
					<th>Mark Completed</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>

				<c:forEach var="todo" items="${list}">
					<tr>
						<td>${todo.id}</td>
						<td>${todo.title}</td>
						<td>${todo.date}</td>
						<td>${todo.status}</td>
						<td><button type="button" class="btn btn-success">
								<a href="/updateToDoStatus/${todo.id}">Mark Compete</a>
							</button></td>
						<td><button type="button" class="btn btn-primary">
								<a href="/editToDoItem/${todo.id}">Mark Edit</a>
							</button></td>
						<td><button type="button" class="btn btn-danger">
								<a href="/deleteToDoItem/${todo.id}">Mark Delete</a>
							</button></td>
					</tr>
				</c:forEach>
			</table>
		</form:form>
		<button type="button" class="btn btn-primary btn-blcok">
			<a href="/addToDoItem">Add New</a>
		</button>
	</div>

	<script th:inline="text/javascript">
		var msg = "$message";

		if (msg == "Save Success") {
			toastr.success("Item Added");
			//command: toastr["success"]("Item Added");
		} else if (msg == "Delete Success") {
			toastr.success("Item deleted");
		} else if (msg == "Delete Failure") {
			toastr.error("Item Failed to be deleted");
		} else if (msg == "Edit Success") {
			toastr.success("Item Edited");
		}

		toastr.options = {
			"closeButton" : true,
			"debug" : false,
			"newestOnTop" : false,
			"progressBar" : true,
			"positionClass" : "toast-bottom-center",
			"preventDuplicates" : false,
			"onclick" : null,
			"showDuration" : "300",
			"hideDuration" : "1000",
			"timeOut" : "5000",
			"extendedTimeOut" : "1000",
			"showEasing" : "swing",
			"hideEasing" : "linear",
			"showMethod" : "fadeIn",
			"hideMethod" : "fadeOut"
		}
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</body>
</html>