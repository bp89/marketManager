
<nav id="Navbar" class="navbar" role="navigation" >
	<div class="container-fluid">
		<div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Ad Builder<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li class="controller">
							<a href="${createLink(controller:'template',action: 'home')}" >Home</a>
						</li>
						<li class="controller">
							<a href="${createLink(controller:'template',action: 'index')}" >Templates</a>
						</li>
						<li class="controller">
							<a href="#" >Custom Categories</a>
						</li>
						<li class="controller">
							<a href="#" >Reports</a>
						</li>
					</ul>
				</li>

				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Campaigns<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li class="controller">
							<a href="${createLink(controller: 'campaign',action: 'home')}" >Home</a>
						</li>
						<li class="controller">
							<a href="${createLink(controller: 'campaign',action: 'list')}" >Campaigns</a>
						</li>
						<li class="controller">
							<a href="${createLink(controller: 'campaign',action: 'reports')}" >Reports</a>
						</li>
					</ul>
				</li>

				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact Manager<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li class="controller">
							<a href="${createLink(controller: 'contact',action: 'home')}" >Home</a>
						</li>
						<li class="controller">
							<a href="${createLink(controller: 'contact',action: 'index')}" >Contacts</a>
						</li>
						<li class="controller">
							<a href="${createLink(controller: 'ComposeMail',action: 'composeContactMail')}" >Compose Mail</a>
						</li>
						<li class="controller">
							<a href="${createLink(controller: 'contact',action: 'reports')}" >Reports</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="${createLink(controller: 'analytics',action: 'show')}">Analytics</a>
				</li>
				%{--<g:render template="/_menu/controller"/>--}%
			</ul>
		</div>
	</div>
</nav>

