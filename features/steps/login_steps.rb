Quando("submeto minhas credenciais:") do |table|
  user = table.rows_hash
  @login.sign_in(user[:email], user[:senha])
end
  
Então("devo ver a notificação: {string}") do |notice|
  #log(get_source) # pega o XML da tela
  expect(@toaster.toast.text).to eql notice
end
