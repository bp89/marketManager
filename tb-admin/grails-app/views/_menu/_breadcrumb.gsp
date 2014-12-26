
<ol class="breadcrumb">
    <li><a href="${createLink(controller: 'home',action:'index')}">Home</a></li>
    <g:each in="${session.getAttribute('cNames')}" var="cl">
        <% if(cl.equals('admin')){%>


        <li><a href = "${createLink(controller: cl , action: 'modules')}">${cl}</a></li>
        <% }
        else { %>
        <li><a href = "${createLink(controller: cl , action: 'index')}">${cl}</a></li>

        <%}%>
    </g:each>

</ol>
