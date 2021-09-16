#language: pt

@inputs
Funcionalidade: Inputs

    @radio
    Cenario: Radio Button
        Dado que estou na tela: "Botões_de_Radio"
        Quando eu escolho a opção Ruby
        Então esta opção deve ser marcada

    @checkbox
    Cenario: Checkbox
        Dado que estou na tela: "Checkbox"
        Quando eu marco a opção Ruby
        Então esta opção deve estar marcada

    @checkbox2
    Cenario: Todas as techs que usam appium
         Dado que estou na tela: "Checkbox"
         Quando eu marco as seguintes techs:
            |tech|
            |Ruby|
            |Python|
            |Java|
            |Javascript|
            |C#|
            |Robot Framework|          
         Então todas essas opções devem estar marcadas
