#language: pt

@avengers
Funcionalidade: Avengers

    @remove_capitao_america
    Cenário: Remover o Capitão América
        Dado que estou na tela: "Avengers_Lista"
        Quando eu apago o avenger: "Capitão América"
        Então devo ver a seguinte mensagem: "Item removido! (posição = 0)"

    @remove_thor
    Cenário: Remover o Thor
        Dado que estou na tela: "Avengers_Lista"
        Quando eu apago o avenger: "Thor"
        Então devo ver a seguinte mensagem: "Item removido! (posição = 1)"

    @remove_Homem_de_Ferro
    Cenário: Remover o Homem de Ferro
        Dado que estou na tela: "Avengers_Lista"
        Quando eu apago o avenger: "Homem de Ferro"
        Então devo ver a seguinte mensagem: "Item removido! (posição = 2)"

    @remove_todos_avengers
    Esquema do Cenário: Remover todos avengers
        Dado que estou na tela: "Avengers_Lista"
        Quando eu apago o avenger: "<Nome>"
        Então devo ver a seguinte mensagem: "<Informação>"

        Exemplos:
            |Nome            |Informação                  |
            |Capitão América |Item removido! (posição = 0)|
            |Thor            |Item removido! (posição = 1)|
            |Homem de Ferro  |Item removido! (posição = 2)|
            |Hulk            |Item removido! (posição = 3)|
            |Homem Aranha    |Item removido! (posição = 4)|
