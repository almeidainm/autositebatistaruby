class CadastroSucessoPage < SitePrism::Page
    

    element :nome,  :xpath, '//div[@class="col s9"]'
    element :sobrenome, :xpath, '//strong[contains(text(),"Ultimo Nome:")]'
    element :email, :xpath, '//strong[contains(text(),"Email:")]'
    element :endereco, :xpath, '//strong[contains(text(),"Address:")]'
    element :universidade, :xpath, '//strong[contains(text(),"Univercidade:")]'
    element :profissao, :xpath, '//strong[contains(text(),"Profissão:")]'
    element :genero, :xpath, '//strong[contains(text(),"Idade:")]'
    element :idade, :xpath, '//strong[contains(text(),"Profissão:")]'
    @nome
    @sobrenome
    @email
    @endereco
    @universidade
    @profissao
    @genero
    @idade
 
    def recebeForm(nome1, sobrenome1, email1, endereco1, universidade1, profissao1, genero1, idade1)

        @nome = nome1
        @sobrenome = sobrenome1
        @email = email1
        @endereco = endereco1
        @universidade = universidade1
        @profissao = profissao1
        @genero = genero1
        @idade =  idade1
        
    end
    def compararForm
        find_all(nome.text).to eql @nome
     
        
    end
end