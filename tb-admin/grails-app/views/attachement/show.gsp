
<%@ page import="com.topper.books.adbuilder.Attachement" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachement.label', default: 'Attachement')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-attachement" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachement.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachementInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachement.path.label" default="Path" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachementInstance, field: "path")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
