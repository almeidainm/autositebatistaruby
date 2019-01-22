class AcessandoPrincipal < SitePrism::Page
  set_url 'https://automacaocombatista.herokuapp.com' 

  element :btn_automacao,  "*[contains(text(),'Começar Automação Web')]"
  def clicarbtn1
    btn_automacao.clicar "*[contains(text(),'Começar Automação Web')]"
  end  
end