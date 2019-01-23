class AcessandoTreinamento < SitePrism::Page
  set_url '/treinamento/home/'
  element :search_field, 'h5.orange-text'
  element :link_form, :xpath, '//*[contains(text(),"Formulário")]'
  element :link_criar, :xpath, '//*[contains(text(),"Criar Usuários")]'


  def link_form
    link_form.click
  end 

  def link_criar
    link_criar.click
end





