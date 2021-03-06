<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
        <title><g:message code="default.list.label" args="["Carro"]" /></title>
    </head>
    <body>
    <content tag="nav">
       <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="["Carro"]" /></g:link></li>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <g:if test="${c.name != 'Car'}">
                    <li class="controller">
                        <g:link controller="${c.logicalPropertyName}">${c.name}</g:link>
                    </li>
                    </g:if>
             </g:each>
        </ul>
    </content>
        <!--<a href="#list-car" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="["Carro"]" /></g:link></li>
            </ul>
        </div>-->
        <div id="list-car" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="["Carro"]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${carList}" />

            <div class="pagination">
                <g:paginate total="${carCount ?: 0}" />
            </div>
        </div>
    </body>
</html>