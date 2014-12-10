
<%@ page import="com.topper.books.adbuilder.Template" %>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'template.label', default: 'Template')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
	<g:javascript  plugin="jquery" />
	<link rel="stylesheet" href="${resource(dir: 'css',file: 'colorbox.css')}" />
	<script type="text/javascript" src="${resource(dir: 'js',file: 'jquery.colorbox.js')}"></script>
</head>

<body>

<section id="show-template" class="first">

	<table class="table">
		<tbody>

		<tr class="prop">
			<td valign="top" class="name"><g:message code="template.name.label" default="Name" /></td>
			<td valign="top" class="value">${fieldValue(bean: templateInstance, field: "name")}</td>

		</tr>

		<tr class="prop">
			<td valign="top" class="name"><g:message code="template.subject.label" default="Subject" /></td>

			<td valign="top" class="value">${fieldValue(bean: templateInstance, field: "subject")}</td>

		</tr>

		<tr class="prop">
			<td valign="top" class="name"><g:message code="template.content.label" default="Content" /></td>

			<td valign="top" class="value">
				%{--<g:link controller="template" action="preview" params="[id:${templateInstance.id}]">Preview</g:link>--}%
				<g:link controller="template" action="preview" name="preview11" params="[id:templateInstance.id]" >Preview</g:link>
			</td>
		</tr>

		<tr class="prop">
			<td valign="top" class="name"><g:message code="template.attachments.label" default="Attachments" /></td>

			<td valign="top" style="text-align: left;" class="value">
				<ul>
					<g:each in="${templateInstance.attachments}" var="a">
						<li><g:link controller="attachement" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
					</g:each>
				</ul>
			</td>

		</tr>
		</tbody>
	</table>
</section>


<script>
	$(document).ready(function() {
		$('preview11').colorbox();
	});
</script>
</body>

</html>
