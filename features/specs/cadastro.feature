#language: pt

@cadastro
Funcionalidade: Cadastro

    @cadastro_sucesso
    Esquema do Cenário: Cadastro com sucesso
        Dado que estou na tela: "Cadastro"
        Quando submeto dados "<Nome>", "<Email>", "<Senha>", "<Profile>" para cadastrar
        Então devo ver a menssagem: "Tudo certo, recebemos seus dados!"

        Exemplos:
            |Nome   |Email                 |Senha    |Profile      |
            |Test 1 |testuser1@teste.com.br|test1    |Desenvolvedor|
            |Test 2 |testuser2@teste.com.br|test1    |QA           |
            |Test 3 |testuser3@teste.com.br|test1    |DevOps       |
            |Test 4 |testuser4@teste.com.br|test1    |UX           |


    @campos_invalido
    Cenário: Campos inválido  
        Dado que estou na tela: "Cadastro"
        Quando insiro minhas credenciais: "<Nome>" , "<Email>", "<Senha>" , "<Profile>"
        Então apresenta a informação: "<Inform>"

        Exemplos:
            |Nome   |Email                 |Senha    |Profile      |Inform                          |
            |       |testuser1@teste.com.br|test1    |Desenvolvedor|Informe seu nome                |
            |Test 2 |testeemailinválido    |test1    |QA           |Por favor, informe um email bom!|
            |Test 3 |testuser3@teste.com.br|         |DevOps       |Oops! Senha em branco!          |