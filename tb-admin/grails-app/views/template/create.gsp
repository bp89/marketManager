<%@ page import="com.topper.books.adbuilder.Template" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'template.label', default: 'Template')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
	%{--<uploader:head css="/path/to/your.css" />--}%
	%{--<uploader:head />--}%
</head>

<body>

<section id="create-template" class="first">

	<g:hasErrors bean="${templateInstance}">
		<div class="alert alert-danger">
			<g:renderErrors bean="${templateInstance}" as="list" />
		</div>
	</g:hasErrors>

	%{--<g:form action="save" class="form-horizontal" role="form" >--}%
	<form id="fileupload" action="save" method="POST" enctype="multipart/form-data" data-ng-app="demo" data-ng-controller="DemoFileUploadController" data-file-upload="options" data-ng-class="{'fileupload-processing': processing() || loadingFiles}">
		<g:render template="form"/>

		<div class="form-actions margin-top-medium">
			<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			<button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
		</div>
	%{--</g:form>--}%
	</form>
</section>

</body>

</html>
