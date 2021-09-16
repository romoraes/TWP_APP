Dado('que estou na tela: {string}') do |tela|
  @nav.navegacao(tela)
end

Quando('eu apago o avenger: {string}') do |nome|
  @avengers.select_avengers(nome)
end

Então('devo ver a seguinte mensagem: {string}') do |expect_message|
  expect(@message.message.text).to eql expect_message
end