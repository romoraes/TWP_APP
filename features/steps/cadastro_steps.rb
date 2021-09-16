Quando('submeto dados {string}, {string}, {string}, {string} para cadastrar') do |nome, email, senha, profile|
  @cadastro.create_user(nome, email, senha, profile)
end

Então("devo ver a menssagem: {string}") do |notice|
  expect(@toaster.toast.text).to eql notice
end

Quando('insiro minhas credenciais: {string} , {string}, {string} , {string}') do |nome, email, senha, profile|
  @cadastro.create_user(nome, email, senha, profile)
end

Então('apresenta a informação: {string}') do |inform|
   expect(@textview.textview.text).to eql inform
end
