<%@ page import="com.topper.books.campaign.Campaign" %>

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
<div class="${hasErrors(bean: campaignInstance, field: 'subject', 'error')} ">
    <label for="subject" class="control-label"><g:message code="campaign.subject.label" default="Subject" /></label>
    <div>
        <g:textField class="form-control" name="subject" value="${campaignInstance?.subject}"/>
        <span class="help-inline">${hasErrors(bean: campaignInstance, field: 'subject', 'error')}</span>
    </div>
</div>
<div class="${hasErrors(bean: campaignInstance, field: 'content', 'error')} ">
    <label for="content" class="control-label"><g:message code="campaign.content.label" default="Content" /></label>
    <div>
        <g:textField class="form-control" name="content" value="${campaignInstance?.content}"/>
        <span class="help-inline">${hasErrors(bean: campaignInstance, field: 'content', 'error')}</span>
    </div>
</div>
			<div class="${hasErrors(bean: campaignInstance, field: 'attachments', 'error')} ">
				<label for="attachments" class="control-label"><g:message code="campaign.attachments.label" default="Attachments" /></label>
				<div>
					<g:select class="form-control" name="attachments" from="${com.topper.books.adbuilder.Attachement.list()}" multiple="multiple" optionKey="id" size="5" value="${campaignInstance?.attachments*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: campaignInstance, field: 'attachments', 'error')}</span>
				</div>
			</div>









