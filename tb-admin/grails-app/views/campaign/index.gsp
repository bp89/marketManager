
<%@ page import="com.topper.books.campaign.Campaign" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-campaign" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
                <g:sortableColumn property="name" title="${message(code: 'campaign.name.label', default: 'Name')}" />
                <g:sortableColumn property="type" title="${message(code: 'campaign.type.label', default: 'Type')}" />

                <g:sortableColumn property="subject" title="${message(code: 'campaign.subject.label', default: 'Subject')}" />
				<g:sortableColumn property="content" title="${message(code: 'campaign.content.label', default: 'Content')}" />
			


			

			
			</tr>
		</thead>
		<tbody>
		<g:each in="${campaignInstanceList}" status="i" var="campaignInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                <td><g:link action="show" id="${campaignInstance.id}">${fieldValue(bean: campaignInstance, field: "name")}</g:link></td>
                <td>${fieldValue(bean: campaignInstance, field: "type")}</td>
                <td>${fieldValue(bean: campaignInstance, field: "subject")}</td>
				<td>${fieldValue(bean: campaignInstance, field: "content")}</td>
			

			

			

			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${campaignInstanceCount}" />
	</div>
</section>

</body>

</html>
