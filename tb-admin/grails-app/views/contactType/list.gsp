
<%@ page import="com.topper.books.core.ContactType" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'contactType.label', default: 'ContactType')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-contactType" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="description" title="${message(code: 'contactType.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'contactType.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${contactTypeInstanceList}" status="i" var="contactTypeInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${contactTypeInstance.id}">${fieldValue(bean: contactTypeInstance, field: "description")}</g:link></td>
			
				<td>${fieldValue(bean: contactTypeInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${contactTypeInstanceCount}" />
	</div>
</section>

</body>

</html>
