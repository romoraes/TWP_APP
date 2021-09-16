#language: pt

@login
Funcionalidade: Login

    Cenário: Login com sucesso
        Dado que estou na tela: "Login"
        Quando submeto minhas credenciais:
            |email|eu@papito.io|
            |senha|qaninja|
        Então devo ver a notificação: "Show! Suas credenciais são validas."