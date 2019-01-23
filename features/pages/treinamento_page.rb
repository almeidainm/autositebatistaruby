class AcessandoTreinamento < SitePrism::Page
  set_url '/treinamento/home/'
  element :search_field, 'h5.orange-text'
  element :link_form, :xpath, '//a[contains(text(),"Formulário")]'
  element :link_criar, :xpath, '//a[contains(text(),"Criar Usuários")]'

  
  def searchField
    has_search_field?

  end

  def link_formulario_clk
    link_form.click
  end 

  def link_criaruser_clk
    link_criar.click
  end

  def verificaLinkForm
    has_link_form?
  end
  def verificaLinkCriar
    has_link_criar?
  end

end





