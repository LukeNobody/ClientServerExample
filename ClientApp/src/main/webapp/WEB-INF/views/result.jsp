<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><spring:message code="result.title" text="Birth" /></title>
</head>
<body>
	<h2>
		<spring:message code="result.text" text="Birth" />
		${message}
	</h2>
	<a href="/ClientApp/"><spring:message code="result.return"
			text="Birth" /></a>
</body>

</html>