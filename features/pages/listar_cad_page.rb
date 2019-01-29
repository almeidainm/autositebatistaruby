class ListarCad < SitePrism::Page
    elements :lista, 'tr > td'
    element :btDelete, :xpath, '//tbody//tr[1]//td[11]//a[1]'

        
    set_url '/users'

    def vetorLista(nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
        binding.pry
        linha = "#{nome} #{nome} #{nome} #{nome} #{nome} #{nome} #{nome} #{nome} #{nome}"

        if nome == "carlos"
            @c=3
            @x=4
        end
        
        
           
            for @c in @x do

                
                if()
                    true
                end
            end
            

    end


    def btDeleteAll_clk
        cont = 0
        num  = 300

        while cont < num do
            if  page.has_selector?(:xpath, '//tbody//tr[1]//td[11]//a[1]') == false
                cont =+ 400
                
            else
                btDelete.click
            
                page.accept_confirm
                cont =+ 1
            end
            
        end
    end
end