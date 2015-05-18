<%@ page import="com.topper.books.core.ContactType" %>



			<div class="${hasErrors(bean: contactTypeInstance, field: 'contacts', 'error')} ">
				<label for="contacts" class="control-label"><g:message code="contactType.contacts.label" default="Contacts" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${contactTypeInstance?.contacts?}" var="c">
    <li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contact" action="create" params="['contactType.id': contactTypeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: contactTypeInstance, field: 'contacts', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactTypeInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="contactType.description.label" default="Description" /></label>
				<div>
					<g:textField class="form-control" name="description" value="${contactTypeInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: contactTypeInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: contactTypeInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="contactType.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${contactTypeInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: contactTypeInstance, field: 'name', 'error')}</span>
				</div>
			</div>

