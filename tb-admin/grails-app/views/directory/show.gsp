
<%@ page import="com.topper.books.adbuilder.Directory" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="adminTemplate" />
	<g:set var="entityName" value="${message(code: 'directory.label', default: 'Directory')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-directory" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="directory.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: directoryInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="directory.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: directoryInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="directory.parent.label" default="Parent" /></td>
				
				<td valign="top" class="value"><g:link controller="directory" action="show" id="${directoryInstance?.parent?.id}">${directoryInstance?.parent?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
