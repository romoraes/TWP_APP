class CadastroScreen
   def create_user(nome, email, senha, profile)
      find_element(id: "io.qaninja.android.twp:id/etUsername").send_keys(nome)
      find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
      find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(senha)
      select_profile(profile)
      find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
   end

   def select_profile(profile)
      find_element(id: "io.qaninja.android.twp:id/spinnerJob").click
      case profile
      when 'Desenvolvedor' then find_element(xpath: "//android.widget.TextView[contains(@text,'Desenvolvedor')]").click
      when 'QA' then find_element(xpath: "//android.widget.TextView[contains(@text,'QA')]").click
      when 'DevOps' then find_element(xpath: "//android.widget.TextView[contains(@text,'DevOps')]").click
      else find_element(xpath: "//android.widget.TextView[contains(@text,'UX')]").click
      end
   end
end

