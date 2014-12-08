<%@ page import="com.topper.books.adbuilder.Attachement" %>



			<div class="${hasErrors(bean: attachementInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="attachement.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${attachementInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: attachementInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachementInstance, field: 'path', 'error')} ">
				<label for="path" class="control-label"><g:message code="attachement.path.label" default="Path" /></label>
				<div>
					<g:textField class="form-control" name="path" value="${attachementInstance?.path}"/>
					<span class="help-inline">${hasErrors(bean: attachementInstance, field: 'path', 'error')}</span>
				</div>
			</div>

