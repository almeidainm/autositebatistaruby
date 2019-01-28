class AcessandoTreinamento < SitePrism::Page
  
  element :search_field, 'h5.orange-text'
  element :link_form, :xpath, '//a[contains(text(),"Formulário")]'
  element :link_criar, :xpath, '//a[contains(text(),"Criar Usuários")]'
  element :link_lista, :xpath, '//a[contains(text(),"Lista de Usuários")]'

  
  def searchField
    search_field.visible?

  end

  def link_formulario_clk
    link_form.click
  end 

  def link_criaruser_clk
    link_criar.click
  end

  def link_lista_clk
    link_lista.click
  end

  def verificaLinkLista
    loop do

      tf = link_lista.visible?
      break if tf == true
    end
  end

  def verificaLinkForm

    loop do

      tf = link_form.visible?
      break if tf == true
    end
        
end
    def verificaLinkCriar

      loop do

        tf2 = link_criar.visible?
        break if tf2 == true
      end
     end

end



