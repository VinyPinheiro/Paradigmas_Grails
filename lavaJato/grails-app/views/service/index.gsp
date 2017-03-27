<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'service.label', default: 'Service')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <content tag="nav">
       <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <g:if test="${c.name != 'Service'}">
                    <li class="controller">
                        <g:link controller="${c.logicalPropertyName}">${c.name}</g:link>
                    </li>
                    </g:if>
             </g:each>
        </ul>
    </content>
        <div id="list-service" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${serviceList}" />
 
            <div class="pagination">
                <g:paginate total="${serviceCount ?: 0}" />
            </div>
        </div>
    </body>
</html>