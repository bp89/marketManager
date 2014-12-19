
<%@ page import="com.topper.books.core.Resource" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'resource.label', default: 'Resource')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-resource" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="resource.resourceName.label" default="Resource Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: resourceInstance, field: "resourceName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="resource.resourceSize.label" default="Resource Size" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: resourceInstance, field: "resourceSize")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="resource.resourceType.label" default="Resource Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: resourceInstance, field: "resourceType")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="resource.type.label" default="Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: resourceInstance, field: "type")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
