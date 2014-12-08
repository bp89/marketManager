
<%@ page import="com.topper.books.adbuilder.Template" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'template.label', default: 'Template')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-template" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="content" title="${message(code: 'template.content.label', default: 'Content')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'template.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="subject" title="${message(code: 'template.subject.label', default: 'Subject')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${templateInstanceList}" status="i" var="templateInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${templateInstance.id}">${fieldValue(bean: templateInstance, field: "content")}</g:link></td>
			
				<td>${fieldValue(bean: templateInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: templateInstance, field: "subject")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${templateInstanceCount}" />
	</div>
</section>

</body>

</html>
