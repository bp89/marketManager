<g:if test="${session.getAttribute('cName') == 'contactSource'}">
    <g:if test="${(session.getAttribute('aName') == 'index') || (session.getAttribute('aName') == 'list')}">

    <g:render template="/_menu/breadcrumbContactSourceIndex"/>
</g:if>
    <g:else>
        <g:render template="/_menu/breadcrumbContactSourceCreate"/>
    </g:else>
    </g:if>
<g:elseif test="${session.getAttribute('cName') == 'contactType'}">
<g:if test="${(session.getAttribute('aName') == 'index') || (session.getAttribute('aName') == 'list')}">

        <g:render template="/_menu/breadcrumbContactTypeIndex"/>
    </g:if>
    <g:else>
        <g:render template="/_menu/breadcrumbContactTypeCreate"/>
    </g:else>
</g:elseif>
<g:elseif test="${session.getAttribute('cName') == 'template'}">
    <g:if test="${(session.getAttribute('aName') == 'index') || (session.getAttribute('aName') == 'list')}">
        <g:render template="/_menu/breadcrumbAdBuilderTemplateIndex"/>
    </g:if>
    <g:else>
        <g:render template="/_menu/breadcrumbAdBuilderTemplateCreate"/>
    </g:else>
</g:elseif>