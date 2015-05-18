<%@ page import="com.topper.books.core.Resource" %>



			<div class="${hasErrors(bean: resourceInstance, field: 'resourceName', 'error')} ">
				<label for="resourceName" class="control-label"><g:message code="resource.resourceName.label" default="Resource Name" /></label>
				<div>
					<g:textField class="form-control" name="resourceName" value="${resourceInstance?.resourceName}"/>
					<span class="help-inline">${hasErrors(bean: resourceInstance, field: 'resourceName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: resourceInstance, field: 'resourceSize', 'error')} ">
				<label for="resourceSize" class="control-label"><g:message code="resource.resourceSize.label" default="Resource Size" /></label>
				<div>
					<g:textField class="form-control" name="resourceSize" value="${resourceInstance?.resourceSize}"/>
					<span class="help-inline">${hasErrors(bean: resourceInstance, field: 'resourceSize', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: resourceInstance, field: 'resourceType', 'error')} ">
				<label for="resourceType" class="control-label"><g:message code="resource.resourceType.label" default="Resource Type" /></label>
				<div>
					<g:textField class="form-control" name="resourceType" value="${resourceInstance?.resourceType}"/>
					<span class="help-inline">${hasErrors(bean: resourceInstance, field: 'resourceType', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: resourceInstance, field: 'type', 'error')} ">
				<label for="type" class="control-label"><g:message code="resource.type.label" default="Type" /></label>
				<div>
					<g:textField class="form-control" name="type" value="${resourceInstance?.type}"/>
					<span class="help-inline">${hasErrors(bean: resourceInstance, field: 'type', 'error')}</span>
				</div>
			</div>

