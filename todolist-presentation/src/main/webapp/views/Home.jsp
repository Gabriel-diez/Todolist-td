<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todolist</title>
</head>
<body>
 	<c:forEach items="${tasks}" var="task">
 		<form action="/todolist-presentation/end" method="get">
     		<div>${task.name} - ${task.status.name}</div>
     		<input type="hidden" value="${task.id}" name="idTask" />
     		<input type="submit" value="Supprimer">
     	</form>
	 </c:forEach>
</body>
</html>