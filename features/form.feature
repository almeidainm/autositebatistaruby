#language: pt

Funcionalidade: Automatizar Site batista

   

    Contexto: Acessar tela principal
        Dado que o usuario acesse a pagina da automação com batista
        Quando clicar no botão começar automação web
        Então vai para pagina home

    Esquema do Cenario: Caminho Feliz
        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche o formulario com os dados "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão criar
        Então é exibida a tela de usuario criado com sucesso com os dados corretos


        Exemplos: Valores

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Bruno      |Lima           |bruno@gmail.com    |               |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Carlos     |Lima           |carlos@gmail.com   |rua teste      |                       |Tester         |Masculino      |30         |   
        |Daniel     |Lima           |daniel@gmail.com   |rua teste      |Universidade Paulista  |               |Masculino      |30         |   
        |Eva        |Lima           |eva@gmail.com      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Flavia     |Lima           |flavia@gmail.com   |rua teste      |Universidade Paulista  |Tester         |               |30         |   
        |Gisele     |Lima           |gisele@gmail.com   |rua teste      |Universidade Paulista  |Tester         |Masculino      |           |   
        |Helena     |Lima           |helena@gmail.com   |               |                       |               |               |           |   
    
    
    Esquema do Cenario: Caminhos alternativos
        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche o formulario com os dados "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão criar
        Então ele exibira a seguinte mensagem de erro "<mensagem>"

        Exemplos: Valores

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |mensagem          |
        |           |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   name.blank     | 
        |Adriano    |               |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         | sobrenome.blank  | 
        |Adriano    |Lima           |                   |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.blank    | 
        |Adriano    |Lima           |adriano@gmail      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.invalid  | 


    Esquema do Cenario: Caminho do Botão Voltar
        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche o formulario com os dados "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão voltar
        Então é exibida a tela home
        

        Exemplos: Valores

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |

     @mapeando_lista_usuarios  
    Cenario: Comparando usuarios cadastrados
        Dado que o usuario clique no botão Formulário
        E no botão Lista de Usuários do sub-menu que sera exibido
        E verifica a existência dos dados de usuários "nome", "sobrenome", "email", "endereco", "universidade", "profissao", "genero" e "idade"
        Então retorna para a página home