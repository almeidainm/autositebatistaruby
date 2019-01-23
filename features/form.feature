#language: pt

Funcionalidade: Automatizar Site batista

    Entrar na tela principal
    Automatizar os formularios de cadastro

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
        |Adriano    |Lima           |adriano@gmail.com  |               |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |                       |Tester         |Masculino      |30         |   
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |               |Masculino      |30         |   
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |               |30         |   
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |           |   
        |Adriano    |Lima           |adriano@gmail.com  |               |                       |               |               |           |   
    
    
    Esquema do Cenario: Caminhos alternativos
        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche o formulario com os dados "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão criar
        Então ele exibira a seguinte mensagem de erro "<mensagem>"

        Exemplos: Valores

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |mensagem          |
        |           |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   name.blank     | 
        |Adriano    |               |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   blank          | 
        |Adriano    |Lima           |                   |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.blank    | 
        |Adriano    |Lima           |adriano@gmail      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.invalid  | 
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |                  |

    Esquema do Cenario: Caminho do Botão Voltar
        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche o formulario com os dados "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão voltar
        Então é exibida a tela home
        

        Exemplos: Valores

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |
        