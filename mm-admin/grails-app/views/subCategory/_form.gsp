<%@ page import="com.topper.books.core.SubCategory" %>



			<div class="${hasErrors(bean: subCategoryInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="subCategory.description.label" default="Description" /></label>
				<div>
					<g:textField class="form-control" name="description" value="${subCategoryInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: subCategoryInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: subCategoryInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="subCategory.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${subCategoryInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: subCategoryInstance, field: 'name', 'error')}</span>
				</div>
			</div>

