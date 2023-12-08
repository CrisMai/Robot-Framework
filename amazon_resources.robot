
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                 https://www.amazon.com.br/
${MENU_ELETRONICOS}    //*[@id="nav-xshop"]/a[2] 
${HEADER_ELETRONICOS}    //*[@id="contentGrid_375496"]/div/div[1]/div/div/div/h1
${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window


Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible   locator=${MENU_ELETRONICOS}  

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS} 

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS} 

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}


 Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
     Input Text    locator=twotabsearchtextbox   text=${PRODUTO}


Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button


Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(<span class="a-size-base-plus a-color-base a-text-normal">${PRODUTO}</span>)


# GHERKIN STEPS
 Dado que estou na home page da Amazon.com.br
     Acessar a home page do site Amazon.com.br
     Verificar se o título da página fica "Amazon.com.br"


Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"


Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

    
E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"


 E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"


Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa


Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
     Verificar se o título da página fica "Amazon.com.br : Xbox Series S"


E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

