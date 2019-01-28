class AcessandoPrincipal < SitePrism::Page
  set_url 'https://automacaocombatista.herokuapp.com' 
  element :btn_automacao, :xpath, '//*[contains(text(),"Começar Automação Web")]'
  #Click no botão da tela principal
  def clicarbtn1
    btn_automacao.click
  end  
end

