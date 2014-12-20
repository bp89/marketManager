<style>
#Navbar-admin{
	background-color: #e8ffac;
	font-family: "Helvetica Neue Light", "HelveticaNeue-Light", "Helvetica Neue", Calibri, Helvetica, Arial, sans-serif;
	font-weight: bold;

}

#Navbar-admin ul{
	align: right;
}

#Navbar{
	background-color: #53ffeb;
	margin: 20px 5px 0px 5px;
	border-radius: 10px 10px 0px 0px;
	font-weight: bold;
	border-bottom: 1px #1a1ef7 solid;
}
</style>
<nav id="Navbar-admin" class="navbar navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="${createLink(uri: '/')}">
				<img class="logo" src="${resource(plugin: 'kickstart', dir:'images', file:'brand_logo.png')}" alt="${meta(name:'app.name')}" width="16px" height="16px"/>
				Topper Books
				%{--<small> v${meta(name:'app.version')}</small>--}%
			</a>
		</div>

		<div class="navbar-header pull-right" >
			<ul class="nav navbar-nav navbar-right ">
				%{--<g:render template="/_menu/search"/>--}%
				<g:render template="/_menu/admin"/>
				%{--<g:render template="/_menu/info"/>--}%
				%{--<g:render template="/_menu/user"/><!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->--}%
				<g:render template="/_menu/language"/>
				<li>
					<a href="${createLink(controller: 'auth',action: 'signOut')}">
						Logout
					</a>

				</li>
			</ul>
		</div>
	</div>
</nav>


<g:render template="/_menu/controller"/>