
<%@ page import="com.topper.books.core.User" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-user" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="passwordHash" title="${message(code: 'user.passwordHash.label', default: 'Password Hash')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${userInstanceList}" status="i" var="userInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: userInstance, field: "passwordHash")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${userInstanceCount}" />
	</div>
</section>

</body>

</html>
