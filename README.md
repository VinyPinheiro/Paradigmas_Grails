# Sistema de Lava a Jato - Grails

No projeto em questão foi utilizado o Paradigma Orientado a Convenções sobre Configuração para criar um sistema responsável por auxiliar a administração de um Lava a Jato.

##### Manual de instalação:

É necessário ter em sua máquina instalado a JVM, Groovy e Grails, de preferência nas respectivas versões:
- Groovy Version: 2.4.5
- Grails Version: 3.2.1
- JVM Version: 1.8.0_73
	
Execute o script DataBaseScript.sql na pasta raiz da aplicação.

Usando o terminal, navegue até a pasta de origem da aplicação, intitulada "lavaJato", e execute os seguintes comandos:

	$ grails run-app
	$ ./gradlew boot

Após a plataforma configurar e rodar a aplicação, será disponibilizado um link (ex.: http://localhost:8080) ao final do processo. Abra-o em algum navegador para visualizar a aplicação.