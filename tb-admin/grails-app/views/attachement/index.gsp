
<%@ page import="com.topper.books.adbuilder.Attachement" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachement.label', default: 'Attachement')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-attachement" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'attachement.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="path" title="${message(code: 'attachement.path.label', default: 'Path')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${attachementInstanceList}" status="i" var="attachementInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${attachementInstance.id}">${fieldValue(bean: attachementInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: attachementInstance, field: "path")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${attachementInstanceCount}" />
	</div>
</section>

</body>

</html>
