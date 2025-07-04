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

### Seção 06: Incluindo CRM no Projeto

<details>
    <summary><strong>Configurando o projeto com o novo CRM</strong></summary>
    <br />
    <div align="left">

<a href="https://www.udemy.com/course/aprenda-a-programar-em-net-mvc-e-sql/learn/lecture/19097262#learning-tools">**Link da Aula**</a>

### 🧰 1. **Estrutura de Pastas do Projeto**

* Pastas padrão do projeto:

  * `Scripts`: arquivos JavaScript.
  * `Content`: arquivos CSS.
  * `Site.Master`: estrutura base compartilhada entre as páginas.

### 📦 2. **Importação dos Arquivos do Template**

* Layout HTML gratuito foi baixado com as seguintes pastas:

  * `css` (estilo visual)
  * `img` (imagens)
  * `lib` (bibliotecas JS)
* Essas pastas foram **copiadas para dentro da pasta raiz do projeto**, via **explorador de arquivos do Windows**.
* No Visual Studio:

  * Ativou a visualização de arquivos ocultos.
  * Selecionou as pastas e clicou com botão direito → **“Incluir no projeto”**.

### 🧩 3. **Aplicação do Layout no `Site.Master`**

* Abriu o arquivo `index.html` do layout como referência (sem adicionar ao projeto).
* No `Site.Master`, substituiu toda a estrutura HTML pelo código do template, mantendo **somente a div do corpo da página** (`<asp:ContentPlaceHolder>`).

### 🔍 4. **Ajustes Finais no Layout**

* **Inspecionou o HTML** com o navegador Chrome usando o recurso “Inspecionar Elemento” para entender melhor a estrutura.
* Identificou o local correto para colar o conteúdo do `<body>` do template.
* Deletou a parte “dummy” do conteúdo inicial (`Full HTML page`) e substituiu por `Minha Página Inicial`.

</details>

### Seção 07: Tela de cadastro

<details>
    <summary><strong>Criando a tela de cadastro no WebForms</strong></summary>
    <br />
    <div align="left">

<a href="https://www.udemy.com/course/aprenda-a-programar-em-net-mvc-e-sql/learn/lecture/19097758#learning-tools">**Link da Aula**</a>

### 🧱 1. **Criação da Página .aspx**

* Criou uma **pasta chamada `Paginas`** no Gerenciador de Soluções.
* Adicionou um **novo item** do tipo "Web Forms com Master Page".
* Nome da página: `Cadastro.aspx`.
* Vinculou à master page (`Site.Master`).

### 🎨 2. **Inserção de Formulário do Template HTML**

* Abriu uma página HTML do layout para copiar um **formulário pronto**.
* Inspecionou o elemento no **Chrome (F12 > Inspecionar)** e localizou a `div` com o formulário.
* Clicou com o botão direito → `Editar como HTML` → **Copiou o código do formulário**.

### 🧩 3. **Colagem do Formulário na Página ASPX**

* Colou o HTML copiado dentro da `<asp:Content>` do `Cadastro.aspx`.
* Ajustou os caminhos dos arquivos CSS e JS:

  * Adicionou **uma barra `/` no início dos caminhos**, por exemplo:
    `/css/style.css`, `/lib/jquery.min.js`, etc.

### ⚙️ 4. **Conversão dos Campos HTML para Controles Web Forms**

* Substituiu todos os `<input type="text">` por `<asp:TextBox>`:

  * Exemplo:

    ```aspx
    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" />
    ```
* Cada campo do banco de dados foi representado por um `TextBox`:

  * Nome → `txtNome`
  * Sobrenome → `txtSobrenome`
  * Email → `txtEmail`
  * Endereço, Bairro, Cidade, Estado
  * ID do Departamento (ainda não relacionado, mas campo adicionado)

### 🧼 5. **Limpeza do HTML Desnecessário**

* Removeu os campos antigos HTML (`<input>`) depois de substituí-los.
* Garantiu que todos os `TextBox` e o `Form` estivessem dentro de uma `form runat="server"`:

  ```aspx
  <form id="form1" runat="server">
    ...
  </form>
  ```

### 💡 Dica Importante:

> A diferença entre Web Forms e MVC começa a ficar clara:
>
> * No Web Forms: você precisa usar `runat="server"` e controles do tipo `asp:TextBox`, `asp:Button`, etc.
> * No MVC: tudo é feito com HTML puro + Razor e o controle fica todo no Controller.

</details>