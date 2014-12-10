
<%@ page import="com.topper.books.core.Contact" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-contact" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.address.label" default="Address" /></td>
				
				<td valign="top" class="value"><g:link controller="address" action="show" id="${contactInstance?.address?.id}">${contactInstance?.address?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.category.label" default="Category" /></td>
				
				<td valign="top" class="value"><g:link controller="category" action="show" id="${contactInstance?.category?.id}">${contactInstance?.category?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.contactSource.label" default="Contact Source" /></td>
				
				<td valign="top" class="value"><g:link controller="contactSource" action="show" id="${contactInstance?.contactSource?.id}">${contactInstance?.contactSource?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.contactType.label" default="Contact Type" /></td>
				
				<td valign="top" class="value"><g:link controller="contactType" action="show" id="${contactInstance?.contactType?.id}">${contactInstance?.contactType?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contactInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contactInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.organisation.label" default="Organisation" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contactInstance, field: "organisation")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.phoneNumber.label" default="Phone Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contactInstance, field: "phoneNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contact.prefix.label" default="Prefix" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contactInstance, field: "prefix")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
