
<%@ page import="com.topper.books.core.ContactType" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />

	<g:set var="entityName" value="${message(code: 'contactType.label', default: 'ContactType')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
    %{--<script src="${resource(dir: 'js',file: 'jquery-sortable.js')}"></script>
    <style>
    .icon-move{
        cursor: hand;
        background-position: -168px -72px;
    }
    </style>--}%
</head>

<body>

<section id="index-contactType" class="first">
%{--<g:form name="orderFrom" id="orderForm" controller="contactType" action="doOrder">--}%
	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="description" title="${message(code: 'contactType.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'contactType.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${contactTypeInstanceList}" status="i" var="contactTypeInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
               %{-- <td class="icon-move">
                    <img  src="${resource(dir: 'images',file: 'move-512.png')}" height="20px" width="20px">
                    <input type="hidden" name="sequence_${contactTypeInstance.id}" value="${contactTypeInstance.sequence}">
                </td>--}%
				<td><g:link action="show" id="${contactTypeInstance.id}">${fieldValue(bean: contactTypeInstance, field: "description")}</g:link></td>
			
				<td>${fieldValue(bean: contactTypeInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
   %{-- </g:form>--}%
	<div>
		<bs:paginate total="${contactTypeInstanceCount}" />
	</div>
</section>
%{--<script>
    $('.sorted_table').sortable({
        containerSelector: 'table',
        itemPath: '> tbody',
        itemSelector: 'tr',
        handle: '.icon-move',
        placeholder: '<tr class="placeholder"/>',

        onDrop: function (item, container, _super) {
            item.closest('table').find('tbody tr').each(function (i, row) {
                var row = $(row)
//				alert(row.first('td').find("input[name*='sequence_']").val())
                row.first('td').find("input[name*='sequence_']").val(i+1)
            })
            var data = $('#orderFrom').serializeArray();
            $.ajax({
                url: "${createLink(controller: 'contactType',action: 'doOrder')}",
                type: "POST",
                data: data
            })
        }
    })
</script>--}%
</body>

</html>
