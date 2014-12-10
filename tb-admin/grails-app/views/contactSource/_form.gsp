<%@ page import="com.topper.books.core.ContactSource" %>



			<div class="${hasErrors(bean: contactSourceInstance, field: 'contacts', 'error')} ">
				<label for="contacts" class="control-label"><g:message code="contactSource.contacts.label" default="Contacts" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${contactSourceInstance?.contacts?}" var="c">
    <li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contact" action="create" params="['contactSource.id': contactSourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: contactSourceInstance, field: 'contacts', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactSourceInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="contactSource.description.label" default="Description" /></label>
				<div>
					<g:textField class="form-control" name="description" value="${contactSourceInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: contactSourceInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactSourceInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="contactSource.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${contactSourceInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: contactSourceInstance, field: 'name', 'error')}</span>
				</div>
			</div>

