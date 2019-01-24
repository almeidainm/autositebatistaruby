Dado("que o usuario acesse a pagina da automação com batista") do
  index.load

end

Quando("clicar no botão começar automação web") do
  index.clicarbtn1
end

Então("vai para pagina home") do
 
  home.searchField
end

Quando("o usuario clicar no botão Formulário") do
  home.verificaLinkForm
  home.link_formulario_clk

end

Quando("no botão Criar Usuários do sub-menu que sera exibido") do
  home.verificaLinkCriar
  home.link_criaruser_clk
end

Quando("o usuario preenche o formulario com os dados {string}, {string}, {string}, {string}, {string}, {string}, {string} e {string}") do |nome, sobrenome, email, endereco, universidade, profissao, genero, idade|
  formulario.preencherForm(nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
end

Quando("clicar no botão criar") do 
  formulario.clicarCriar
end

Então("é exibida a tela de usuario criado com sucesso com os dados corretos") do
  
  formulario.verificarSusseso
end

Então("ele exibira a seguinte mensagem de erro {string}") do |mensagem|
  case mensagem.to_i
    when 'name.blank' 
      formulario.verificarErroNome
    when 'sobrenome.blank'
      formulario.verificarSusseso
    when 'email.invalid'
      formulario.verificarErroEmailInvalid
    when 'email.blank'
      formulario.verificarErroEmailBlank
  end    

end

Quando("clicar no botão voltar") do
  formulario.clicarVoltar
end

Então("é exibida a tela home") do
  
  home.searchField
  home.verificaLinkForm
  home.link_formulario_clk
  home.verificaLinkList
  home.link_listar_clk
  listar.btDeleteAll_clk
 
end

