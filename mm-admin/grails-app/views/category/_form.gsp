<%@ page import="com.topper.books.core.Category" %>



			<div class="${hasErrors(bean: categoryInstance, field: 'contacts', 'error')} ">
				<label for="contacts" class="control-label"><g:message code="category.contacts.label" default="Contacts" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${categoryInstance?.contacts?}" var="c">
    <li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contact" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: categoryInstance, field: 'contacts', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: categoryInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="category.description.label" default="Description" /></label>
				<div>
					<g:textField class="form-control" name="description" value="${categoryInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: categoryInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: categoryInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="category.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${categoryInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: categoryInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: categoryInstance, field: 'subcategories', 'error')} ">
				<label for="subcategories" class="control-label"><g:message code="category.subcategories.label" default="Subcategories" /></label>
				<div>
					<g:select class="form-control" name="subcategories" from="${com.topper.books.core.SubCategory.list()}" multiple="multiple" optionKey="id" size="5" value="${categoryInstance?.subcategories*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: categoryInstance, field: 'subcategories', 'error')}</span>
				</div>
			</div>

