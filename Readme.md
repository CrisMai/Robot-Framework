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


*----------------****------------------****-----------------****----------------------

Variáveis Embutidas

As variáveis embutidas, também conhecidas como variáveis built-in, no contexto do Robot Framework, 
são variáveis internas que fornecem informações ou funcionalidades específicas durante a execução 
dos testes.

Aqui estão algumas das variáveis embutidas mais comuns:

${CURDIR}:

Representa o diretório de trabalho atual.

${TEST NAME}:

Representa o nome do teste atual.

${TEST STATUS}:

Representa o status do teste atual ("PASS", "FAIL", "SKIP", etc.).


*----------------****----------------****---------------------****----------------------

Log e Report

Log:

O "log" no Robot Framework refere-se a um arquivo que contém informações detalhadas sobre a 
execução dos testes.
O log inclui mensagens de log padrão, mensagens personalizadas inseridas no script, e detalhes 
sobre cada passo executado durante os testes.
Ele fornece uma visão mais detalhada e técnica da execução, permitindo identificar possíveis 
problemas, como falhas em determinados passos ou a captura de screenshots em caso de falha.


Report:

O "report" é um resumo mais amigável e de alto nível da execução dos testes.
Ele geralmente é gerado em formato HTML e fornece uma visão geral do sucesso ou falha dos testes.
O relatório inclui estatísticas sobre o número de testes bem-sucedidos, falhas, tempo de execução, 
e pode até conter gráficos visuais para facilitar a compreensão.
O relatório é uma ferramenta valiosa para uma rápida avaliação do estado geral dos testes.

Enquanto o log fornece detalhes técnicos específicos sobre cada passo da execução, o relatório 
oferece uma visão resumida e mais amigável para análise.


*------------------****------------------****------------------------****----------------------

Comandos de Execução

Execução de Diretório: robot nome_do_diretorio
Este comando executa todos os arquivos de teste em um diretório.

Execução com Tags: robot -i nome_da_tag nome_do_arquivo.robot
Este comando executa apenas os testes que têm uma tag específica.

Execução Recursiva: robot --recursive nome_do_diretorio
Este comando executa todos os arquivos de teste em um diretório e em subdiretórios.

Geração de Relatório HTML: robot --outputdir resultados --output output.html nome_do_arquivo.robot
Este comando gera um relatório HTML na pasta especificada.

Geração de Log: robot --log log.txt nome_do_arquivo.robot
Este comando gera um arquivo de log com informações detalhadas sobre a execução.

Execução em Paralelo: pabot --processes 2 nome_do_diretorio
Este comando executa testes em paralelo usando o Pabot, um executor paralelo para o Robot Framework.


*-----------------****----------------****-------------------****----------------------------

Gherkin BDD

O Gherkin é uma linguagem de especificação utilizada principalmente em práticas de Desenvolvimento 
Orientado a Comportamento (BDD - Behavior-Driven Development).
As principais características da linguagem Gherkin incluem: 
- Utiliza palavras-chave específicas, como Feature, Scenario, Given, When, Then, entre outras.
- A linguagem é declarativa, o que significa que se concentra no que o sistema deve fazer, não em como fazê-lo. 
- A sintaxe é projetada para ser legível e compreensível por não programadores. 


*------------------****--------------------****----------------------****-----------------------------

Escopos de Variáveis

No Robot Framework, os escopos de variáveis referem-se às diferentes áreas ou contextos onde uma 
variável pode ser definida e acessada. Isso é importante para entender como as variáveis são tratadas
em diferentes partes de um script de teste. 
Existem basicamente três escopos de variáveis no Robot Framework:

- Variáveis Locais (Local Variables):

As variáveis locais são definidas dentro de uma keyword ou test case e só são acessíveis nesse 
contexto específico.
Elas não são visíveis em outros test cases ou keywords.
Variáveis locais são declaradas usando o prefixo "&" antes do nome da variável.

- Variáveis de Test Case (Test Case Variables):

As variáveis de test case são definidas no nível do test case e podem ser acessadas por todas as 
keywords dentro desse test case.
Elas não são visíveis em outros test cases.
Variáveis de test case são declaradas usando o prefixo "$" antes do nome da variável.

- Variáveis Globais (Global Variables):

As variáveis globais são definidas no nível de suíte de testes e podem ser acessadas por todos 
os test cases e keywords dentro dessa suíte.
Elas são declaradas usando o prefixo "@" antes do nome da variável.


*------------------****-----------------****-----------------------****-------------------------

Variáveis Simples, Listas e Dicionários

Simples:

Armazenam um único valor.
Elas são declaradas usando o prefixo $.

Exemplo:
${nome}    Valor da Variável
Log    ${nome}

Listas:

São conjuntos ordenados de valores. Cada valor em uma lista é associado a um índice.
Elas são declaradas usando o prefixo @.

Exemplo:
@{lista}    Item1    Item2    Item3
Log    ${lista[0]}    # Acessando o primeiro item da lista

Dicionários:

São conjuntos não ordenados de pares chave-valor.
Eles são declarados usando o prefixo %.

Exemplo:
%{dicionario}    Chave1=Valor1    Chave2=Valor2
Log    ${dicionario}[Chave1]}    # Acessando o valor associado à Chave1


*---------------****-----------------****---------------------****----------------------

Argumentos

Os argumentos são usados para fornecer dados a keywords ou test cases durante a execução.
Abaixo estão algumas abordagens comuns para lidar com argumentos no Robot Framework:

1- Passagem de Argumentos para Test Cases:
Os argumentos podem ser passados diretamente para test cases quando eles são chamados.

Exemplo:
*** Test Cases ***
Test Case Com Argumentos
    [Arguments]    ${nome}    ${idade}
    Log    Nome: ${nome}    Idade: ${idade}

Chamada do Test Case:
Test Case Com Argumentos    Alice    30

2- Passagem de Argumentos para Keywords:
Da mesma forma, é possível passar argumentos para keywords.

Exemplo:
*** Keywords ***
Keyword Com Argumentos
    [Arguments]    ${arg1}    ${arg2}
    Log    Argumento 1: ${arg1}    Argumento 2: ${arg2}
    
Chamada da Keyword:
Keyword Com Argumentos    Valor1    Valor2

3- Usando o Keyword Set Test Variable:
O keyword Set Test Variable pode ser usado para definir variáveis de teste que podem ser acessadas globalmente.

Exemplo:
*** Test Cases ***
Setando Variavel Global
    ${nome}    Set Test Variable    Alice
    Log    Nome: ${nome}
Usando Argumentos Padrão:

4- Pode-se definir argumentos padrão para uma keyword ou test case.

Exemplo:
*** Keywords ***
Keyword Com Argumento Padrão
    [Arguments]    ${nome}    ${idade}=30
    Log    Nome: ${nome}    Idade: ${idade}

Chamada da Keyword:
Keyword Com Argumento Padrão    Alice


*-------------****-------------------****------------------****----------------------

Loops

O Robot Framework oferece suporte a estruturas de repetição para criar loops em seus testes. 
Existem duas principais maneiras de implementar loops no Robot Framework: usando a keyword 
FOR e a keyword IN.

1. Loop FOR:
A estrutura do loop FOR no Robot Framework é semelhante ao loop FOR em linguagens de programação tradicionais.

2. Loop IN:
A estrutura do loop IN é usada para iterar sobre elementos de uma lista, dicionário ou string.


*-----------------****----------------------****----------------------****--------------------

APIs

API, ou Interface de Programação de Aplicações (Application Programming Interface, em inglês), é um conjunto de 
regras e definições que permite que softwares se comuniquem entre si. Ela define os métodos e formatos de mensagens 
que os desenvolvedores podem usar para solicitar e receber informações ou realizar operações em um serviço ou aplicação.

A principal função de uma API é proporcionar uma forma padronizada para que diferentes sistemas se conectem e interajam 
entre si. As APIs podem ser utilizadas para diversos fins, incluindo:

Integração de Sistemas
Desenvolvimento de Aplicações
Acesso a Serviços Web
Desenvolvimento Ágil

As APIs podem ser baseadas em diversos protocolos, como HTTP/HTTPS, REST (Representational State Transfer), 
SOAP (Simple Object Access Protocol), entre outros. 
Elas podem retornar dados em diversos formatos, como JSON, XML, ou até mesmo HTML.