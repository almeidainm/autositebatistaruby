class ListarCad < SitePrism::Page
   
        element :btDelete, :xpath, '//tbody//tr[1]//td[11]//a[1]'

    def btDeleteAll_clk
        cont = 0
        num  = 5000

        while cont < num do
            
            
            
           
           
            if  page.has_selector?(:xpath, '//tbody//tr[1]//td[11]//a[1]') == false
                cont =+ 5100
                
            else
                btDelete.click
            
                page.accept_confirm
                cont =+ 1
            end
            
        end


    end






end