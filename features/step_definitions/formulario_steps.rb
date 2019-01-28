Dado("que o usuario acesse a pagina da automação com batista") do
  index.load
end

Quando("clicar no botão começar automação web") do
  index.clicarbtn1
end

Então("vai para pagina home") do
  
  home.verificaPg
end

Quando("o usuario clicar no botão Formulário") do
  
  home.link_formulario_clk

end

Quando("no botão Criar Usuários do sub-menu que sera exibido") do
  
  home.link_criaruser_clk
  
end

Quando("o usuario preenche os dados respectivos a {string}, {string}, {string}, {string}, {string}, {string}, {string} e {string}") do |nome, sobrenome, email, endereco, universidade, profissao, genero, idade|
  formulario.preencherForm(nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
  cadastroSucesso.recebeForm(nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
end

Quando("clicar no botão criar") do 
  formulario.clicarCriar
end

Então("é exibida a tela de usuario criado com sucesso com os dados corretos") do
  
  formulario.verificarSusseso
  cadastroSucesso.compararForm
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
  
  home.verificaPg
  #---------------------------
  #home.verificaLinkForm
  #home.link_formulario_clk
  #home.verificaLinkList
  #home.link_listar_clk
  #listar.btDeleteAll_clk
 
end

Dado("que o usuario clique no botão Formulário") do
  
  home.link_formulario_clk
end

Dado("no botão Lista de Usuários do sub-menu que sera exibido") do
 
  home.link_listar_clk 
  
end

Dado("verifica a existência dos dados de usuários {string}, {string}, {string}, {string}, {string}, {string}, {string} e {string}") do |string, string2, string3, string4, string5, string6, string7, string8|
  listarUsuarios.vetorLista()
end

Então("retorna para a página home") do
  pending # Write code here that turns the phrase above into concrete actions
end

