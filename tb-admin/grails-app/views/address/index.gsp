
<%@ page import="com.topper.books.core.Address" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-address" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="city" title="${message(code: 'address.city.label', default: 'City')}" />
			
				<g:sortableColumn property="country" title="${message(code: 'address.country.label', default: 'Country')}" />
			
				<g:sortableColumn property="phoneNumber" title="${message(code: 'address.phoneNumber.label', default: 'Phone Number')}" />
			
				<g:sortableColumn property="state" title="${message(code: 'address.state.label', default: 'State')}" />
			
				<g:sortableColumn property="zip" title="${message(code: 'address.zip.label', default: 'Zip')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${addressInstanceList}" status="i" var="addressInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "city")}</g:link></td>
			
				<td>${fieldValue(bean: addressInstance, field: "country")}</td>
			
				<td>${fieldValue(bean: addressInstance, field: "phoneNumber")}</td>
			
				<td>${fieldValue(bean: addressInstance, field: "state")}</td>
			
				<td>${fieldValue(bean: addressInstance, field: "zip")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${addressInstanceCount}" />
	</div>
</section>

</body>

</html>
