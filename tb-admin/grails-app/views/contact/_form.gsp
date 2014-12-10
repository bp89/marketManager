<%@ page import="com.topper.books.core.Contact" %>



			<div class="${hasErrors(bean: contactInstance, field: 'address', 'error')} required">
				<label for="address" class="control-label"><g:message code="contact.address.label" default="Address" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="address" name="address.id" from="${com.topper.books.core.Address.list()}" optionKey="id" required="" value="${contactInstance?.address?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'category', 'error')} required">
				<label for="category" class="control-label"><g:message code="contact.category.label" default="Category" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="category" name="category.id" from="${com.topper.books.core.Category.list()}" optionKey="id" required="" value="${contactInstance?.category?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'category', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'contactSource', 'error')} required">
				<label for="contactSource" class="control-label"><g:message code="contact.contactSource.label" default="Contact Source" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="contactSource" name="contactSource.id" from="${com.topper.books.core.ContactSource.list()}" optionKey="id" required="" value="${contactInstance?.contactSource?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'contactSource', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'contactType', 'error')} required">
				<label for="contactType" class="control-label"><g:message code="contact.contactType.label" default="Contact Type" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="contactType" name="contactType.id" from="${com.topper.books.core.ContactType.list()}" optionKey="id" required="" value="${contactInstance?.contactType?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'contactType', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="contact.email.label" default="Email" /></label>
				<div>
					<g:textField class="form-control" name="email" value="${contactInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="contact.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${contactInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'organisation', 'error')} ">
				<label for="organisation" class="control-label"><g:message code="contact.organisation.label" default="Organisation" /></label>
				<div>
					<g:textField class="form-control" name="organisation" value="${contactInstance?.organisation}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'organisation', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'phoneNumber', 'error')} ">
				<label for="phoneNumber" class="control-label"><g:message code="contact.phoneNumber.label" default="Phone Number" /></label>
				<div>
					<g:textField class="form-control" name="phoneNumber" value="${contactInstance?.phoneNumber}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'phoneNumber', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactInstance, field: 'prefix', 'error')} ">
				<label for="prefix" class="control-label"><g:message code="contact.prefix.label" default="Prefix" /></label>
				<div>
					<g:textField class="form-control" name="prefix" value="${contactInstance?.prefix}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'prefix', 'error')}</span>
				</div>
			</div>

