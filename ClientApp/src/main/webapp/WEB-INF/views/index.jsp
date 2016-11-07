<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><spring:message code="index.title" text="Birth" /></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<form:form method="post" modelAttribute="message">
					<div class="form-group">
						<form:label path="name">
							<spring:message code="form.name" />
						</form:label>
						<form:input path="name" type="text" class="form-control" />
						<form:errors path="name" />
					</div>

					<div class="form-group">
						<form:label path="surname">
							<spring:message code="form.surname" text="Surname" />
						</form:label>
						<form:input path="surname" type="text" class="form-control" />
						<form:errors path="surname" />
					</div>

					<div class="form-group">
						<form:label path="yearOfBirth">
							<spring:message code="form.yearOfBirth" text="Birth" />
						</form:label>
						<form:input path="yearOfBirth" type="text" class="form-control" />
						<form:errors path="yearOfBirth" />
					</div>

					<div class="form-group">
						<form:label path="comment">
							<spring:message code="form.comment" text="Comment" />
						</form:label>
						<form:textarea path="comment" class="form-control" rows="3" />
						<form:errors path="comment" />
					</div>

					<form:button class="btn btn-default">
						<spring:message code="form.confirm" text="Send" />
					</form:button>
				</form:form>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>