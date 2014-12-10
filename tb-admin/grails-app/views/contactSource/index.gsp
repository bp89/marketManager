
<%@ page import="com.topper.books.core.ContactSource" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'contactSource.label', default: 'ContactSource')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-contactSource" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="description" title="${message(code: 'contactSource.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'contactSource.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${contactSourceInstanceList}" status="i" var="contactSourceInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${contactSourceInstance.id}">${fieldValue(bean: contactSourceInstance, field: "description")}</g:link></td>
			
				<td>${fieldValue(bean: contactSourceInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${contactSourceInstanceCount}" />
	</div>
</section>

</body>

</html>
