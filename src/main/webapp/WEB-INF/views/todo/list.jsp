<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todo List</title>
<style type="text/css">
.strike {<!--I think it wouldn't be being used anymore-->
	text-decoration: line-through;
}

.alert {
	border: 1px solid;
}

.alert-error{
	background-color: #c60f13;
	border-color: #970b0e;
	color: white;
}

.alert-success{
	background-color: #5da423;
	border-color:457a1a;
	color: white;

.text-error{
	color: #c60f13;
}	

}

</style>
</head>
<body>
	<h1>Todo List</h1>
	<div id="todoForm">
		
		<t:messagesPanel />
		
		<form:form action="${pageContext.request.contextPath}/todo/create"
			method="post" modelAttribute="todoForm">
			<form:input path="todoTitle" />
			<form:errors path="todoTitle" cssClass="text-error" />
			<form:button>Create Todo</form:button>
		</form:form>
	</div>

	<hr />

	<div id="todoList">
		<ul>
			<c:forEach items="${todos}" var="todo">
				<li><c:choose>
						<c:when test="${todo.finished}">
							<span style="text-decoration: line-through;"> ${f:h(todo.todoTitle)} </span>
						</c:when>
						<c:otherwise>
						${f:h(todo.todoTitle)}
					</c:otherwise>
					</c:choose></li>
			</c:forEach>

		</ul>
	</div>
</body>
</html>