
<%@ page import="com.topper.books.adbuilder.Directory" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="adminTemplate" />
	<g:set var="entityName" value="${message(code: 'directory.label', default: 'Directory')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>

	<style>
	.dir-content{
		text-align: center;
		color: slategrey;
		font-family: "Courier New", monospace, serif;
		text-transform: capitalize;
		text-align: center;
	}

	.dir-content > div:hover{
		background-color: lightseagreen;
		border-radius: 4px;

	}
	</style>
</head>


<body>

<div class="content-fluid">
	<g:each in="${directoryInstanceList}" status="i" var="directoryInstance">
		<g:if test="${i%5==0}">
			<div class="row-fluid">
		</g:if>
		<div class="col-md-2">
			<div class="folder-details ">
				<div class="dir-content">
					<div onmouseover="getDetails('${directoryInstance.id}')">
						<g:link action="show" id="${directoryInstance.id}" >
							<img src="${resource(dir: 'images',file: '1211782291.png')}" width="100" height="100">
						</g:link>
					</div>
					<span>${fieldValue(bean: directoryInstance, field: "description")}</span>
				</div>
			</div>
			%{--${fieldValue(bean: directoryInstance, field: "name")}--}%
			%{--${fieldValue(bean: directoryInstance, field: "parent")}--}%
		</div>
		<g:if test="${i%5==0}">
			</div>
		</g:if>
	</g:each>
</div>

<script>
	function getDetails(id){
			$.post("${createLink(controller: 'directory',action:'details')}",
					{
						id:id
					},
					function(data){
						alert("Data: " + data + "\nStatus: " + status);
					});
	}

	
</script>
</body>

</html>
