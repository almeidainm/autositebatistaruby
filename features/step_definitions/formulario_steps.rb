Dado("que o usuario acesse a pagina da automação com batista") do
  index.load
end
  
Quando("clicar em começar automação web") do
  index.clicarbtn1
  sleep(3)
end
#---------------------------------------------------------------------------------
  #PAGINA 2
Então("vai para pagina home") do
  home.search_field
  sleep(3)
end

 Quando("o usuario clicar no botão Formulário") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("no botão Criar Usuários do sub-menu que sera exibido") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("o usuario preenche o formulario com os dados {string}, {string}, {string}, {string}, {string}, {string}, {string} e {string}") do |string, string2, string3, string4, string5, string6, string7, string8|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar no botão criar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("é exibida a tela de usuario criado com sucesso com os dados corretos") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("ele exibira a seguinte mensagem de erro {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar no botão voltar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("é exibida a tela home") do
  pending # Write code here that turns the phrase above into concrete actions
end