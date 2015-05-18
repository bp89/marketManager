<%@ page import="com.topper.books.campaign.Campaign" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

	<section id="create-campaign" class="first">

		<g:hasErrors bean="${campaignInstance}">
		<div class="alert alert-danger">
			<g:renderErrors bean="${campaignInstance}" as="list" />
		</div>
		</g:hasErrors>

		<g:form action="save" class="form-horizontal" role="form" >
			%{--<g:render template="form"/>--}%
            <g:render template="customForm"/>
           <label for="contacts">Associate Contacts</label>
          %{--  <g:textField class="form-control" name="contacts" value=""/>--}%
            <g:select name="contacts"  multiple="multiple"
                      from="${com.topper.books.core.Contact.list()}"
                      optionKey="id"
                      optionValue="email"
                      noSelection="${['null':'Please Choose.....']}" />

			<div class="form-actions margin-top-medium">
				<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />

	             <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
			</div>
		</g:form>

	</section>

</body>

</html>
