
<%@ page import="com.topper.books.core.Contact" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-contact" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="contact.address.label" default="Address" /></th>
			
				<g:sortableColumn property="email" title="${message(code: 'contact.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'contact.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="organisation" title="${message(code: 'contact.organisation.label', default: 'Organisation')}" />
			
				<g:sortableColumn property="prefix" title="${message(code: 'contact.prefix.label', default: 'Prefix')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${contactInstanceList}" status="i" var="contactInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${contactInstance.id}">${fieldValue(bean: contactInstance, field: "address")}</g:link></td>
			
				<td>${fieldValue(bean: contactInstance, field: "email")}</td>
			
				<td>${fieldValue(bean: contactInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: contactInstance, field: "organisation")}</td>
			
				<td>${fieldValue(bean: contactInstance, field: "prefix")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${contactInstanceCount}" />
	</div>
</section>

</body>

</html>
