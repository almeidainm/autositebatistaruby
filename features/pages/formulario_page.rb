class FormularioPage < SitePrism::Page
    set_url '/users/new'

    element :nome,  '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, ' #user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :btn_criar, :xpath, '//div[@class="actions btn waves-effect green"]'


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

    def verificar
        find('#notice')
    end
    
end