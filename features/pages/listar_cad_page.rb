class ListarCad < SitePrism::Page
    elements :lista, 'tr > td'
    element :btDelete, :xpath, '//tbody//tr[1]//td[11]//a[1]'
    element :btn_voltar, :xpath, '//a[@class="btn red"]'

        
    set_url '/users'

    def vetorLista
        linha = Array.new
        @coluna = Array.new
        i=0
        lista.each do |listas|
            for l in 0..7
                @coluna.push(listas.text)
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

    def btnVoltarHome
        btn_voltar.click
    end

end