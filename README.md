# Sistema-de-Cadastro-de-Funcionarios

### Seção 03: O banco de dados SQL Server

<details>
    <summary><strong>Instalando banco de dados SQL</strong></summary>
    <br />
    <div align="left">

<a href="https://www.udemy.com/course/aprenda-a-programar-em-net-mvc-e-sql/learn/lecture/19095440#learning-tools">**Link da Aula**</a>



### 🔌 1. **Conectando o SQL Server ao Visual Studio**

* Abrir o **Visual Studio**.
* Ir em **Gerenciador de Servidores** > **Conectar-se a um banco de dados**.
* Escolher SQL Server como fonte de dados.
* Usar a instância gerada durante a instalação (`.\SQLExpress`).
* Autenticação via Windows.
* Conexão bem-sucedida exibe o banco padrão: `master`.

---

### 🗃️ 2. **Criando a Primeira Tabela: `Departamentos`**

* No banco de dados conectado, clicar com botão direito em "Tabelas" > **Adicionar nova tabela**.
* Por padrão, uma coluna `Id` é criada:

  * Tipo: `int`
  * É a **chave primária** (Primary Key).
  * Habilitar `Identity Specification` com valor `True` (auto incremento).
* Adicionar colunas:

  * `nome` – tipo: `varchar(50)`
  * `descricao` – tipo: `varchar(50)`
* Regras:

  * Sem acentos, espaços, vírgulas ou caracteres especiais nos nomes de colunas.
* Escolher o nome da tabela (ex: `Departamentos`) antes de salvar.
* Clicar em **Update** para aplicar as alterações.
* Visual Studio gera e executa um script SQL automaticamente.

---

### ⚠️ Observações Importantes:

* Caso a tabela não apareça, atualizar o painel de tabelas no Visual Studio.
* Caso tenha criado sem nome, exclua e crie novamente corretamente.

</details>

### Seção 04: Criando tabelas no banco de dados SQL


<details>
    <summary><strong> Entity Framework, criação de tabelas</strong></summary>
    <br />
    <div align="left">

<a href="https://www.udemy.com/course/aprenda-a-programar-em-net-mvc-e-sql/learn/lecture/19095898#learning-tools">**Link da Aula**</a>

### 📁 1. **Preparação do Projeto**

* O projeto foi **renomeado** para: `CadastroFuncionario`.
* Também foi renomeada a **solução** no Visual Studio.

### 🗃️ 2. **Criação da Tabela `Funcionarios`**

* Criada uma nova tabela chamada `Funcionarios` com as seguintes colunas:

  * `IdFuncionario` (int, chave primária, auto incremento)
  * `Nome` (varchar)
  * `Sobrenome` (varchar)
  * `Email` (varchar)
  * `Endereco` (varchar)
  * `Bairro` (varchar)
  * `Estado` (varchar(2))
  * `DepartamentoId` (int) → **Chave estrangeira futura** que será ligada à tabela `Departamentos`
* Lembrando: nomes das colunas **sem acento, espaços ou caracteres especiais**.
* Após configurar, foi gerado e executado o **script SQL** com sucesso.

### 🔗 3. **Ligação do Banco com o Projeto via Entity Framework**

* No **Gerenciador de Soluções**, foi adicionado um novo item:

  * Tipo: **ADO.NET Entity Data Model**
  * Método: **Database First** (usando banco existente)
* A conexão criada anteriormente com o SQL Server foi reconhecida automaticamente.
* O modelo recebeu um nome (ex: `MeuBanco`), e foram selecionadas as tabelas:

  * `Departamentos`
  * `Funcionarios`
* O Visual Studio gerou automaticamente:

  * As **classes das tabelas** (`Funcionario.cs`, `Departamento.cs`)
  * O **modelo visual** das tabelas (com suas propriedades)
  * O **arquivo `.edmx`**, responsável pelo mapeamento entre banco e código


</details>