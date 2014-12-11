<%@ page import="com.topper.books.adbuilder.Template" %>

<ckeditor:resources/>
<div class="${hasErrors(bean: templateInstance, field: 'name', 'error')} ">
	<label for="name" class="control-label"><g:message code="template.name.label" default="Name" /></label>
	<div>
		<g:textField class="form-control" name="name" value="${templateInstance?.name}"/>
		<span class="help-inline">${hasErrors(bean: templateInstance, field: 'name', 'error')}</span>
	</div>
</div>


<div class="${hasErrors(bean: templateInstance, field: 'subject', 'error')} ">
	<label for="subject" class="control-label"><g:message code="template.subject.label" default="Subject" /></label>
	<div>
		<g:textField class="form-control" name="subject" value="${templateInstance?.subject}"/>
		<span class="help-inline">${hasErrors(bean: templateInstance, field: 'subject', 'error')}</span>
	</div>

	<div class="${hasErrors(bean: templateInstance, field: 'content', 'error')} ">
		<label for="content" class="control-label"><g:message code="template.content.label" default="Content" /></label>
		<div>
			%{--<textarea class="ckeditor" cols="80"  rows="10" id="content" name="content" >--}%
			%{--${templateInstance?.content}--}%
			%{--</textarea>--}%
			<ckeditor:editor name="content" height="400px" width="80%">
				${templateInstance?.content}
			</ckeditor:editor>
			<span class="help-inline">${hasErrors(bean: templateInstance, field: 'content', 'error')}</span>
		</div>
	</div>

</div>

<div class="${hasErrors(bean: templateInstance, field: 'attachments', 'error')} ">
	<label for="attachments" class="control-label"><g:message code="template.attachments.label" default="Attachments" /></label>
	<div>
		<uploader:uploader id="attachements"  multiple="true" debug="true" >
			<uploader:onProgress> $('#statusDiv').html('Uploading'+fileName+'...'); </uploader:onProgress>
			<uploader:onSubmit> $('#statusDiv').html('upload');</uploader:onSubmit>
			<uploader:onComplete>
				$('#statusDiv').html('Uploaded '+fileName);
			</uploader:onComplete>
		</uploader:uploader>
		<div id="statusDiv"></div>
		%{--<g:select class="form-control" name="attachments" from="${com.topper.books.adbuilder.Attachement.list()}" multiple="multiple" optionKey="id" size="5" value="${templateInstance?.attachments*.id}" class="many-to-many"/>--}%
		<span class="help-inline">${hasErrors(bean: templateInstance, field: 'attachments', 'error')}</span>
	</div>
</div>



