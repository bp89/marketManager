<%@ page import="com.topper.books.core.Contact" %>



			<div class="${hasErrors(bean: clientInstance, field: 'address', 'error')} required">
				<label for="address" class="control-label"><g:message code="client.address.label" default="Address" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="address" name="address.id" from="${com.topper.books.core.Address.list()}" optionKey="id" required="" value="${clientInstance?.address?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: clientInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="client.email.label" default="Email" /></label>
				<div>
					<g:textField class="form-control" name="email" value="${clientInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: clientInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="client.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${clientInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: clientInstance, field: 'organisation', 'error')} ">
				<label for="organisation" class="control-label"><g:message code="client.organisation.label" default="Organisation" /></label>
				<div>
					<g:textField class="form-control" name="organisation" value="${clientInstance?.organisation}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'organisation', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: clientInstance, field: 'prefix', 'error')} ">
				<label for="prefix" class="control-label"><g:message code="client.prefix.label" default="Prefix" /></label>
				<div>
					<g:textField class="form-control" name="prefix" value="${clientInstance?.prefix}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'prefix', 'error')}</span>
				</div>
			</div>

