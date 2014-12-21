<!DOCTYPE html>
<%-- <html lang="${org.springframework.web.servlet.support.RequestContextUtils.getLocale(request).toString().replace('_', '-')}"> --%>
<html lang="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}">

<head>
	<title><g:layoutTitle default="${meta(name:'app.name')}" /></title>

	<meta charset="utf-8">
	<meta name="viewport"		content="width=device-width, initial-scale=1.0">
	<meta name="description"	content="">
	<meta name="author"			content="">
	<link rel="shortcut icon"		href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
	<link rel="apple-touch-icon"	href="assets/ico/apple-touch-icon.png">
	<link rel="apple-touch-icon"	href="assets/ico/apple-touch-icon-72x72.png"	sizes="72x72">
	<link rel="apple-touch-icon"	href="assets/ico/apple-touch-icon-114x114.png"	sizes="114x114">

	<%-- Manual switch for the skin can be found in /view/_menu/_config.gsp --%>
	<r:require modules="jquery"/> <%-- jQuery is required for Bootstrap! --%>
	<r:require modules="bootstrap"/>
	<r:require modules="bootstrap_utils"/>

	<r:layoutResources />
	<g:layoutHead />

	<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
	<!--[if lt IE 9]>
		<script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<%-- For Javascript see end of body --%>
</head>

<body>
<g:render template="/_menu/navbar"/>

<div class="container-fluid" style="width: 98%;margin: 10px;">
	<div class="btn-toolbar">
		<div class=" btn-group">
			<a class="btn btn-info" href="#user">Users</a>
		</div>
		<div class=" btn-group">
			<a class="btn btn-info" href="#">Adbuilder </a>
			<a class="btn btn-info" href="#campaigns">Campaigns</a>
			<a class="btn btn-info" href="#contacts">Contacts </a>
		</div>
		<div class=" btn-group">
			<a class="btn btn-info" href="#hidden Links">Hidden Links </a>
		</div>
	</div>
</div>


<div class="container-fluid smallBorder" style="width: 98%;margin: 10px;background-color: #f3ffbe;">
	<div class="container">
		<strong>Note : </strong>
		<ul class="text-left text-muted small " style="list-style-type: circle;font-family: 'Bitstream Vera Sans Mono', 'DejaVu Sans Mono', 'Monaco', Courier, monospace">
			<li class="text-danger">IF something is very specific to highlight.</li>
			<li class="text-info">Some good information.</li>
			<li>Sample Notes will come here.</li>
		</ul>
	</div>
</div>

<div id="Content" class="container bigBorder" style="width: 98%;margin: 10px;min-height: 450px">
	<g:if test="${flash.message && !layout_noflashmessage}">
		<div class="alert alert-info">${flash.message}</div>
	</g:if>

	<g:if test="${!request.getRequestURI().contains('modules')}">
		<g:render template="/_menu/submenubar"/>
	</g:if>

	<g:layoutBody />
	<g:pageProperty name="page.body" />
</div>

<!-- Enable to overwrite Footer by individual page -->
<g:if test="${ pageProperty(name:'page.footer') }">
	<g:pageProperty name="page.footer" />
</g:if>
<g:else>
	<g:render template="/layouts/footer"/>
</g:else>


<r:layoutResources />
</body>

</html>