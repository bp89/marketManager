<li class="controller">
	<a  href="${createLink(controller: 'admin',action:'modules')}">
		%{--<i class="glyphicon glyphicon-wrench"></i>--}%
		<img src="${resource(dir: 'images',file: 'Settings-icon.png')}" width="25px" height="25px">
		<g:message code="default.admin.label"/>
		%{--<b class="caret"></b>--}%
	</a>

	<%//TODO:activate for dev. env. only%>
	%{--<ul class="dropdown-menu">--}%

	%{--<li class="">--}%
	%{--<a tabindex="-1" href="#"><b>Settings</b></a>--}%
	%{--</li>--}%

	%{--<li class="">--}%
	%{--<a tabindex="-1" href="#"><b>Technical Admin(During Dev. only)</b></a>--}%
	%{--</li>--}%
	%{--<g:if env="development">--}%
	%{--<li class="">--}%
	%{--<a href="${createLink(uri: '/dbconsole')}">--}%
	%{--<i class="glyphicon glyphicon-dashboard"></i>--}%
	%{--<g:message code="default.dbconsole.label"/>--}%
	%{--</a>--}%
	%{--</li>--}%
	%{--</g:if>--}%
	%{--<li class="">--}%
	%{--<a href="${createLink(uri: '/systeminfo')}">--}%
	%{--<i class="glyphicon glyphicon-info-sign"></i>--}%
	%{--<g:message code="default.systeminfo.label"/>--}%
	%{--</a>--}%
	%{--</li>--}%

	%{--</ul>--}%
</li>
