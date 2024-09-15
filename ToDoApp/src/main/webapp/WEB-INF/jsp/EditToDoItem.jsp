<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Items</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
	rel="stylesheet">
</head>

<body>

	<div class="container">
		<h1 class="p-3">Edit Item</h1>
		<form:form action="/editSaveToDoItem" method="post" modelAttribute="todo">
			<form:input path="id" type="hidden" />
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3" for="title">Title</label>
				<div class="col-md-6">
					<form:input path="title" type="text" id="title"
						class="form-control input-sm" required="required" />
				</div>
			</div>
	</div>

	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3" for="date">Date</label>
			<div class="col-md-6">
				<form:input path="date" type="date" id="date"
					class="form-control input-sm" required="required" />
			</div>
		</div>
	</div>

	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3" for="status">Status</label>
			<div class="col-md-6">
				<form:input path="status" type="text" id="status"
					class="form-control input-sm" value="Incomplete" />
			</div>
		</div>
	</div>

	<div class="row-p-2">
		<div class="col-md-2">
			<button class="btn btn-success" type="submit" value="Register">Save</button>
		</div>
	</div>

	</form:form>
	</div>


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
