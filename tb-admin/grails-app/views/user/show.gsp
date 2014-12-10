
<%@ page import="com.topper.books.core.User" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-user" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userInstance, field: "username")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.passwordHash.label" default="Password Hash" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userInstance, field: "passwordHash")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.permissions.label" default="Permissions" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userInstance, field: "permissions")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.roles.label" default="Roles" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${userInstance.roles}" var="r">
						<li><g:link controller="role" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
