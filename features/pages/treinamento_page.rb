class AcessandoTreinamento < SitePrism::Page
  set_url '/treinamento/home/'
  element :search_field, 'h5.orange-text'
  element :link_form, :xpath, '//a[contains(text(),"Formulário")]'
  element :link_criar, :xpath, '//a[contains(text(),"Criar Usuários")]'

  
  def searchField

    
    search_field.visible?

  end

  def link_formulario_clk
    link_form.click
  end 

  def link_criaruser_clk
    link_criar.click
  end

  def verificaLinkForm
    link_form.visible?

    if link_form.visible? == false
      
         link_form.visible?

            if  link_form.visible?

           end
      
    end
    

  end
  def verificaLinkCriar

    link_criar.visible?

    if link_criar.visible? == false

          link_criar.visible?

             if  link_criar.visible?

             end
   end

  end
end





