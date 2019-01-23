Dado("que o usuario acesse a pagina da automação com batista") do
  index.load

end

Quando("clicar no botão começar automação web") do
  index.clicarbtn1
end

Então("vai para pagina home") do
  sleep(3)
  home.search_field
end

Quando("o usuario clicar no botão Formulário") do
  sleep(3)
  home.link_formulario

end

Quando("no botão Criar Usuários do sub-menu que sera exibido") do
  sleep(3)
  home.link_criaruser
end

Quando("o usuario preenche o formulario com os dados {string}, {string}, {string}, {string}, {string}, {string}, {string} e {string}") do |nome, sobrenome, email, endereco, universidade, profissao, genero, idade|
  formulario.preencherForm(nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
end

Quando("clicar no botão criar") do
  sleep(3)
  formulario.clicarCriar
end

Então("é exibida a tela de usuario criado com sucesso com os dados corretos") do
  formulario.verificar
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

