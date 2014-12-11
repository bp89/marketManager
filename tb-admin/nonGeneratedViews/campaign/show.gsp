
<%@ page import="com.topper.books.core.Campaign" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-campaign" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="campaign.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: campaignInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="campaign.type.label" default="Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: campaignInstance, field: "type")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
