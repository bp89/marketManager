
<%@ page import="com.topper.books.core.SubCategory" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'subCategory.label', default: 'SubCategory')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-subCategory" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="subCategory.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: subCategoryInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="subCategory.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: subCategoryInstance, field: "name")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
