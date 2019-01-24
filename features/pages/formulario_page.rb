class FormularioPage < SitePrism::Page
    

    element :nome,  '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, ' #user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :btn_criar, :xpath, '//div[@class="actions btn waves-effect green"]'
    element :btn_voltar, :xpath, '//a[@class="btn waves-light red"]'

    element :msg_erro_emailBlank, :xpath, '//div[@class="col s9"]//ul//li[1]'
    element :msg_erro_emailInvalid, :xpath, '//div[@class="col s9"]//ul//li[2]'
    element :msg_erro_nomeBlank, :xpath, '//li[contains(text(),"Name translation missing: pt-BR.activerecord.error")]'
    element :msg_erro_sobrenomeBlank, :xpath, '//li[contains(text(),"Name translation missing: pt-BR.activerecord.error")]'
    
    def preencherForm(nome1, sobrenome1, email1, endereco1, universidade1, profissao1, genero1, idade1)
        nome.set(nome1)
        sobrenome.set(sobrenome1)
        email.set(email1)
        endereco.set(endereco1)
        universidade.set(universidade1)
        profissao.set(profissao1)
        genero.set(genero1)
        idade.set(idade1)
    end 

    def clicarCriar
        btn_criar.click
    end

    def verificarSusseso
        find('#notice')
    end

    def verificarErroEmailBlank
        find(msg_erro_emailBlank)
    end
    
    def verificarErroEmailInvalid
        find(msg_erro_emailInvalid)
    end

    def verificarErroNome
        
        find(msg_erro_nomeBlank)
    
    end

    def verificarErroSobrenome
        find(msg_erro_sobrenomeBlank)
    end

    def clicarVoltar
        btn_voltar.click
    end
    
end