
<%@ page import="com.topper.books.core.Contact" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-client" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="client.address.label" default="Address" /></th>
			
				<g:sortableColumn property="email" title="${message(code: 'client.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'client.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="organisation" title="${message(code: 'client.organisation.label', default: 'Organisation')}" />
			
				<g:sortableColumn property="prefix" title="${message(code: 'client.prefix.label', default: 'Prefix')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${clientInstanceList}" status="i" var="clientInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "address")}</g:link></td>
			
				<td>${fieldValue(bean: clientInstance, field: "email")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "organisation")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "prefix")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${clientInstanceCount}" />
	</div>
</section>

</body>

</html>
