class AcessandoTreinamento < SitePrism::Page
  set_url '/treinamento/home/'
  element :search_field, 'h5.orange-text'
  element :btn_form, :xpath, '//a[contains(text(),"Formulário")]'
  element :criar_user, :xpath, '//a[contains(text(),"Criar Usuários")]'
  def botao_form
    btn_form.click
  end 
  def criar_usuario
    criar_user.click
  end  
end

