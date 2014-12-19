
<%@ page import="com.topper.books.core.Resource" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'resource.label', default: 'Resource')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-resource" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="resourceName" title="${message(code: 'resource.resourceName.label', default: 'Resource Name')}" />
			
				<g:sortableColumn property="resourceSize" title="${message(code: 'resource.resourceSize.label', default: 'Resource Size')}" />
			
				<g:sortableColumn property="resourceType" title="${message(code: 'resource.resourceType.label', default: 'Resource Type')}" />
			
				<g:sortableColumn property="type" title="${message(code: 'resource.type.label', default: 'Type')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${resourceInstanceList}" status="i" var="resourceInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${resourceInstance.id}">${fieldValue(bean: resourceInstance, field: "resourceName")}</g:link></td>
			
				<td>${fieldValue(bean: resourceInstance, field: "resourceSize")}</td>
			
				<td>${fieldValue(bean: resourceInstance, field: "resourceType")}</td>
			
				<td>${fieldValue(bean: resourceInstance, field: "type")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${resourceInstanceCount}" />
	</div>
</section>

</body>

</html>
