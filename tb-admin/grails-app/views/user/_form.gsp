<%@ page import="com.topper.books.core.User" %>



			<div class="${hasErrors(bean: userInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="user.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'passwordHash', 'error')} ">
				<label for="passwordHash" class="control-label"><g:message code="user.passwordHash.label" default="Password Hash" /></label>
				<div>
					<g:textField class="form-control" name="passwordHash" value="${userInstance?.passwordHash}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'passwordHash', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'permissions', 'error')} ">
				<label for="permissions" class="control-label"><g:message code="user.permissions.label" default="Permissions" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'permissions', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'roles', 'error')} ">
				<label for="roles" class="control-label"><g:message code="user.roles.label" default="Roles" /></label>
				<div>
					<g:select class="form-control" name="roles" from="${com.topper.books.core.Role.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.roles*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'roles', 'error')}</span>
				</div>
			</div>

