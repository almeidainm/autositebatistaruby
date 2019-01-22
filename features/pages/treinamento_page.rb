class AcessandoTreinamento < SitePrism::Page
  set_url '/treinamento/home/'
  element :search_field, 'h5.orange-text'
  element :btn_form, :xpath, '//a[contains(text(),"Formulário")]'
  def btn_form
    btn_form.click
  end
end

