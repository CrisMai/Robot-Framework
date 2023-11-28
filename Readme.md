Resumo do Projeto

Automação de testes de aplicativos WEB e APIs com o Robot Framework.

**-----------------****------------------****---------------****---------------

O Que é Robot-Framework?

O Robot Framework é uma estrutura de automação de teste e automação de 
processos open source. Ele fornece uma maneira fácil de criar scripts de 
automação de teste e automação de tarefas, permitindo que os usuários 
escrevam testes de forma legível e compreensível. 
O framework utiliza uma linguagem de alto nível, baseada em palavras-chave, 
tornando-a acessível mesmo para pessoas sem experiência em programação.

Principais características do Robot Framework:

Linguagem de alto nível: Os scripts são escritos em uma linguagem fácil de 
entender, com suporte a palavras-chave significativas.

Extensível: É possível estender as capacidades do Robot Framework através de 
bibliotecas e plug-ins. Existem bibliotecas disponíveis para automação de 
interfaces de usuário, APIs, bancos de dados, entre outros.

Independência de plataforma: Funciona em diversos sistemas operacionais, 
incluindo Windows, Linux e macOS.

Reusabilidade: Os testes e as bibliotecas podem ser reutilizados em diferentes 
projetos.

Geração de relatórios: O framework gera relatórios de execução que fornecem 
informações detalhadas sobre o status dos testes.

Integração com outras ferramentas: Pode ser integrado com ferramentas de controle 
de versão, CI/CD (Integração Contínua e Entrega Contínua), e outras ferramentas 
de automação.

O Robot Framework é usado em uma variedade de contextos, incluindo teste de software, 
automação de processos e testes de aceitação. Ele é uma escolha popular devido à sua 
simplicidade, flexibilidade e capacidade de colaboração entre equipes de desenvolvimento 
e teste.

**--------------------****-------------------****------------------****-----------------

Keyword-driven: É uma abordagem de desenvolvimento de testes automatizados utilizando
palavras-chave para descrever e implementar os passos de teste.
O código-fonte de uma keyword é desenvolvida em uma linguagem de programação, geralmente
em Python.
Um conjunto de keywords de ação é chamada de Library.

**---------------------****-------------------****-------------------****----------------

Libraries: No Robot Framework, uma "library" (biblioteca) refere-se a um conjunto de 
palavras-chave (keywords) e métodos que fornecem funcionalidades específicas para os 
seus testes ou automação. As bibliotecas podem ser internas (built-in), externas 
(criadas por usuários) ou de terceiros. 
Elas são essenciais para estender as capacidades do Robot Framework e realizar tarefas 
específicas, como interação com interfaces de usuário, manipulação de arquivos, chamadas 
de API, entre outras.

Aqui estão alguns tipos comuns de bibliotecas no Robot Framework:

Built-in libraries: São bibliotecas integradas ao próprio Robot Framework e oferecem
funcionalidades básicas. Exemplos incluem:

BuiltIn: Fornece palavras-chave úteis para controle de fluxo, manipulação de strings, etc.
OperatingSystem: Oferece palavras-chave para interagir com o sistema operacional.

Standard libraries: Estas são bibliotecas padrão que são frequentemente usadas para tarefas 
específicas. Exemplos incluem:

SeleniumLibrary: Para automação de testes web usando Selenium.
RequestsLibrary: Para fazer chamadas HTTP utilizando a biblioteca Requests.
DatabaseLibrary: Para interação com bancos de dados.

External libraries: São bibliotecas desenvolvidas por usuários ou por você mesmo para atender 
a requisitos específicos do projeto. Elas podem ser escritas em Python ou em Java.

Remote libraries: Permite executar palavras-chave em um ambiente separado, muitas vezes 
em um servidor remoto.

**-------------------------****-------------------****---------------------****-----------------

Setup e Teardown

Setup: algo que é programado para o Robt fazer antes de rodar um teste ou antes de ele 
rodar uma suite.

Teardown: executa alguma coisa ao final da suíte ou ao final de cada teste.


*--------------------------****------------------------****-----------------------****-------------

Locators

Um locator é uma forma de identificar um elemento na interface do usuário, como um botão, 
campo de texto, link, etc., para interagir com ele durante a execução de testes de automação. 
Os locators são utilizados por bibliotecas como a SeleniumLibrary para localizar elementos na página web.

Existem vários tipos de locators, e cada um tem uma sintaxe específica. Os locators são usados para encontrar 
elementos HTML com base em atributos específicos, como ID, nome, classe, tag, etc.

Aqui estão alguns exemplos comuns de locators:
ID:
Click Element    id=myButton

Name:
Click Element    name=username

Class Name:
Click Element    class=myClass

Tag Name:
Click Element    tag=button

XPath:
Click Element    xpath=//button[@id='myButton']

CSS Selector:
Click Element    css=button#myButton




