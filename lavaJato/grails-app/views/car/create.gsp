<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
        <title><g:message code="default.create.label" args="["Carro"]" /></title>
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
        <div id="create-car" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="["Carro"]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.car}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.car}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <f:all bean="car"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
