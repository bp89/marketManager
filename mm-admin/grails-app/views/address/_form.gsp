<%@ page import="com.topper.books.core.Address" %>



			<div class="${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
				<label for="city" class="control-label"><g:message code="address.city.label" default="City" /></label>
				<div>
					<g:textField class="form-control" name="city" value="${addressInstance?.city}"/>
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'city', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: addressInstance, field: 'country', 'error')} ">
				<label for="country" class="control-label"><g:message code="address.country.label" default="Country" /></label>
				<div>
					<g:textField class="form-control" name="country" value="${addressInstance?.country}"/>
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: addressInstance, field: 'phoneNumber', 'error')} ">
				<label for="phoneNumber" class="control-label"><g:message code="address.phoneNumber.label" default="Phone Number" /></label>
				<div>
					<g:textField class="form-control" name="phoneNumber" value="${addressInstance?.phoneNumber}"/>
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'phoneNumber', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: addressInstance, field: 'state', 'error')} ">
				<label for="state" class="control-label"><g:message code="address.state.label" default="State" /></label>
				<div>
					<g:textField class="form-control" name="state" value="${addressInstance?.state}"/>
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'state', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: addressInstance, field: 'zip', 'error')} ">
				<label for="zip" class="control-label"><g:message code="address.zip.label" default="Zip" /></label>
				<div>
					<g:textField class="form-control" name="zip" value="${addressInstance?.zip}"/>
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'zip', 'error')}</span>
				</div>
			</div>

