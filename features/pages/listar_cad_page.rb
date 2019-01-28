class ListarCad < SitePrism::Page
        elements :lista, 'tr > td'
        element :btDelete, :xpath, '//tbody//tr[1]//td[11]//a[1]'

        
     set_url '/users'

 
  
  def vetorLista()
    puts "#{lista[0].text}"
    puts "#{lista[1].text}"
    puts "#{lista[2].text}"


    var1 = lista[0].text
    var2 = lista[1].text
    var3 = lista[2].text

    puts "#{var1}" 
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