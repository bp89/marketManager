
<%@ page import="com.topper.books.core.Contact" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-client" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.address.label" default="Address" /></td>
				
				<td valign="top" class="value"><g:link controller="address" action="show" id="${clientInstance?.address?.id}">${clientInstance?.address?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.organisation.label" default="Organisation" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "organisation")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.prefix.label" default="Prefix" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "prefix")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
