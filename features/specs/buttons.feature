#language: pt

Funcionalidade: Buttons

    @short
    Cenário: Clique Simples
        Dado que estou na tela: "Click_Simples"
        Quando faço um click Simples
        Então devo ver o texto: "Isso é um clique simples"
    
    @long
    Cenário: Clique Longooo
        Dado que estou na tela: "Click_Longo"
        Quando faço um click longoo
        Então devo ver o botão com o texto: "CLIQUE LONGO OK"
