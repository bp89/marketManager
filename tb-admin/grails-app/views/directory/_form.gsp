<%@ page import="com.topper.books.adbuilder.Directory" %>



			<div class="${hasErrors(bean: directoryInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="directory.description.label" default="Description" /></label>
				<div>
					<g:textField class="form-control" name="description" value="${directoryInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: directoryInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: directoryInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="directory.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${directoryInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: directoryInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: directoryInstance, field: 'parent', 'error')} required">
				<label for="parent" class="control-label"><g:message code="directory.parent.label" default="Parent" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="parent" name="parent.id" from="${com.topper.books.adbuilder.Directory.list()}" optionKey="id"  value="${directoryInstance?.parent?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: directoryInstance, field: 'parent', 'error')}</span>
				</div>
			</div>

