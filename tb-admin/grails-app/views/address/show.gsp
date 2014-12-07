
<%@ page import="com.topper.books.core.Address" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-address" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.city.label" default="City" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "city")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.country.label" default="Country" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "country")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.phoneNumber.label" default="Phone Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "phoneNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.state.label" default="State" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "state")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.zip.label" default="Zip" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "zip")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
