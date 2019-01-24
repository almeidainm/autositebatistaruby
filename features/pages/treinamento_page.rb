class AcessandoTreinamento < SitePrism::Page
    #_________________________ELEMENTOS_______________________________"
  element :search_field, 'h5.orange-text'
  element :link_form, :xpath, '//a[contains(text(),"Formulário")]'
  element :link_criar, :xpath, '//a[contains(text(),"Criar Usuários")]'
  element :link_listar, :xpath, '//a[contains(text(),"Lista de Usuários")]'


  #_________________________CLIQUE_________________________________"
  

   def link_listar_clk

       link_listar.click

   end 

    def link_formulario_clk

       link_form.click

   end 

    def link_criaruser_clk

        link_criar.click

    end
#_________________________VERIFICAR___________________________________"

    def searchField

    
       search_field.visible?

    end
    def verificaLinkForm
          wait_until_link_form_visible
          loop do

           tf = link_form.visible?

          break if tf == true
          end
        
    end

    def verificaLinkList 
          wait_until_link_listar_visible
          loop do

            tfl = link_listar.visible?

          break if tfl == true
          end
      
    end
    def verificaLinkCriar
      wait_until_link_criar_visible
      loop do

        tf2 = link_criar.visible?

        break if tf2 == true
        end

    end
 end



