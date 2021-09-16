class Navigator
    def tap_hamburger
        hamburger = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
        find_element(xpath: hamburger).click
    end

    def list
     find_element(id: 'io.qaninja.android.twp:id/rvNavigation')
    end

    def tap_by_text(target)
    find_element(xpath: "//*[@text='#{target}']").click
    end
        
    def navegacao(tela)
        find_element(xpath: "//android.widget.ImageButton[@content-desc='Open navigation drawer']").click
        case tela
        when 'Avengers_Lista'
            find_element(xpath: "//*[@text='AVENGERS']").click
            find_element(xpath: "//*[@text='LISTA']").click
        when 'Login'
            find_element(xpath: "//*[@text='FORMS']").click
            find_element(xpath: "//*[@text='LOGIN']").click
        when 'Botões_de_Radio'
            find_element(xpath: "//*[@text='INPUTS']").click
            find_element(xpath: "//*[@text='BOTÕES DE RADIO']").click
        when 'Checkbox'
            find_element(xpath: "//*[@text='INPUTS']").click
            find_element(xpath: "//*[@text='CHECKBOX']").click
        when 'Cadastro'
            find_element(xpath: "//*[@text='FORMS']").click
            find_element(xpath: "//*[@text='CADASTRO']").click
        when 'Click_Simples'
            find_element(xpath: "//*[@text='BOTÕES']").click
            find_element(xpath: "//*[@text='CLIQUE SIMPLES']").click
        when 'Click_Longo'
            find_element(xpath: "//*[@text='BOTÕES']").click
            find_element(xpath: "//*[@text='CLIQUE LONGO']").click
        else
        end
    end


end

class Toaster
    def toast
        return find_element(xpath: "//android.widget.Toast")
    end
end

class TextView
    def textview
        return find_element(id: "io.qaninja.android.twp:id/textinput_error")
    end
end
