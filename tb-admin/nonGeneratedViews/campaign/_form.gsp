<%@ page import="com.topper.books.core.Campaign" %>



			<div class="${hasErrors(bean: campaignInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="campaign.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${campaignInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: campaignInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: campaignInstance, field: 'type', 'error')} ">
				<label for="type" class="control-label"><g:message code="campaign.type.label" default="Type" /></label>
				<div>
					<g:textField class="form-control" name="type" value="${campaignInstance?.type}"/>
					<span class="help-inline">${hasErrors(bean: campaignInstance, field: 'type', 'error')}</span>
				</div>
			</div>

