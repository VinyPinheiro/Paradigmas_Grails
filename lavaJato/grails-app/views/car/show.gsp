<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
        <title><g:message code="default.show.label" args="["Carro"]" /></title>
    </head>
    <body>
        <a href="#show-car" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="["Carro"]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="["Carro"]" /></g:link></li>
            </ul>
        </div>
        <div id="show-car" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="["Carro"]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="car" />
            <g:form resource="${this.car}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.car}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
