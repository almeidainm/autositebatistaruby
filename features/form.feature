#language: pt

Funcionalidade: Automatizar Site batista

   

    Contexto: Acessar tela principal
        Dado que o usuario acesse a pagina da automação com batista
        Quando clicar no botão começar automação web
        Então vai para pagina home
    @ok
    Esquema do Cenario: Caminho Feliz

        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
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
    
    @alternativo
    Esquema do Cenario: Caminhos alternativos

        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão criar
        Então ele exibira a seguinte mensagem de erro "<mensagem>"

        Exemplos: Valores

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |mensagem          |
        |           |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   name.blank     | 
        |Adriano    |               |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         | sobrenome.blank  | 
        |Adriano    |Lima           |                   |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.blank    | 
        |Adriano    |Lima           |adriano@gmail      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.invalid  | 

    @delete
    Esquema do Cenario: Caminho do Botão Voltar

        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão voltar
        Então é exibida a tela home
 

        Exemplos: Valores

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |

    @compara
    Esquema do Cenario: Comparando usuarios cadastrados

         Quando o usuario clicar no botão Formulário
         E no botão Lista de Usuários do sub-menu que será exibido
         E exibir uma tabela com os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>" cadastrados anteriormente
         Então será clicado no botão VOLTAR para redirecionar á pagina home

        Exemplos: Valores

        | nome      | sobrenome     |email              | endereco      | universidade          | profissao     | genero        | idade     |
        | Adriano   | Lima          | adriano@gmail.com | rua teste     | Universidade Paulista | Tester        | Masculino     | 30        |
        |Bruno      |Lima           |bruno@gmail.com    |               |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Carlos     |Lima           |carlos@gmail.com   |rua teste      |                       |Tester         |Masculino      |30         |   
        |Daniel     |Lima           |daniel@gmail.com   |rua teste      |Universidade Paulista  |               |Masculino      |30         |   
        |Eva        |Lima           |eva@gmail.com      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Flavia     |Lima           |flavia@gmail.com   |rua teste      |Universidade Paulista  |Tester         |               |30         |   
        |Gisele     |Lima           |gisele@gmail.com   |rua teste      |Universidade Paulista  |Tester         |Masculino      |           |   
        |Helena     |Lima           |helena@gmail.com   |               |                       |               |               |           |   
    
    @limpando_a_tabela
    Cenario: Limpando a lista de usuários cadastrados

      	Quando o usuario clicar no botão Formulário
      	E no botão Lista de Usuários do sub-menu que será exibido
		Então serão deletados todos os dados e voltará para a home
