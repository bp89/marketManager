
<%@ page import="com.topper.books.core.SubCategory" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'subCategory.label', default: 'SubCategory')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-subCategory" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="description" title="${message(code: 'subCategory.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'subCategory.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${subCategoryInstanceList}" status="i" var="subCategoryInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${subCategoryInstance.id}">${fieldValue(bean: subCategoryInstance, field: "description")}</g:link></td>
			
				<td>${fieldValue(bean: subCategoryInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${subCategoryInstanceCount}" />
	</div>
</section>

</body>

</html>
