<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <content tag="nav">
       <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <li class="controller">
                    <g:link controller="${c.logicalPropertyName}">${c.name}</g:link>
                </li>
             </g:each>
        </ul>
        <!--
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>-->
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <!--<asset:image src="carro_lava_jato.jpg" class="grails-logo"/> -->
        </div>
    </div>
  
    <div id="content" role="main" class="servicos-container">
        <section class="row colset-2-its">
            <h1>Conheça nossos Serviços</h1>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 servicos">
                <asset:image src="lavando.jpg" class="img img-responsive img-rounded"/>
                <h2>Lavagem completa</h2>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 servicos">
                 <asset:image src="cera.jpg" class="img img-responsive img-rounded"/>
                 <h2>Aplicação de cera</h2>   
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 servicos">
                <asset:image src="interna.jpeg" class="img img-responsive img-rounded"/>
                <h2>Limpeza interna completa</h2>
            </div>
        </section>
    </div>

</body>
</html>
