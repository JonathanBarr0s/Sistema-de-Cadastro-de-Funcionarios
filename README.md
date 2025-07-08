# Sistema-de-Cadastro-de-Funcionarios

## WebForms

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

### Seção 08: Codificando a tela de cadastro

<details>
    <summary><strong>Nesta aula vamos codificar a tela com C#</strong></summary>
    <br />
    <div align="left">

<a href="https://www.udemy.com/course/aprenda-a-programar-em-net-mvc-e-sql/learn/lecture/19098146#learning-tools">**Link da Aula**</a>

### 📦 1. **Relembrando a Estrutura**

* O projeto já contém:

  * A página `Cadastro.aspx` com os campos (`TextBox`, `Button`, etc.).
  * A classe de modelo `Funcionarios` mapeada via Entity Framework.
  * A instância do banco chamada `MeuBanco` (via EF).

### 🧱 2. **Configurando a Lógica no Code-Behind**

#### 📌 Onde colocar o código?

* Na página `Cadastro.aspx.cs`, dentro do método do botão:

  ```csharp
  protected void btnCadastrar_Click(object sender, EventArgs e)
  ```

### 🔧 3. **Instanciar o Banco**

#### 📍 No topo da classe (fora dos métodos):

```csharp
private MeuBanco banco;
```

#### 📍 Dentro do `Page_Load`:

```csharp
protected void Page_Load(object sender, EventArgs e)
{
    banco = new MeuBanco();
}
```

### 🧍‍♂️ 4. **Criando e Preenchendo o Objeto Funcionário**

```csharp
Funcionarios func = new Funcionarios();
func.Nome = txtNome.Text;
func.Sobrenome = txtSobrenome.Text;
func.Email = txtEmail.Text;
func.RG = txtRG.Text;
func.CPF = txtCPF.Text;
func.Endereco = txtEndereco.Text;
func.Bairro = txtBairro.Text;
func.Cidade = txtCidade.Text;
func.Estado = txtEstado.Text;
func.IdDepartamento = Convert.ToInt32(txtDepartamento.Text);
```

> Certifique-se de que os IDs dos `TextBox` no .aspx estão corretos!

---

### 💾 5. **Salvar no Banco de Dados**

```csharp
banco.Funcionarios.Add(func);
banco.SaveChanges();
```

### 🛡️ 6. **Tratamento de Erros com Try-Catch**

```csharp
try
{
    // Preenchimento do objeto
    Funcionarios func = new Funcionarios();
    func.Nome = txtNome.Text;
    // ... (outros campos)

    banco.Funcionarios.Add(func);
    banco.SaveChanges();

    lblResposta.Text = "Cadastro efetuado com sucesso!";
}
catch (Exception ex)
{
    lblResposta.Text = "Erro ao cadastrar: " + ex.Message;
}
```

> `lblResposta` é um `Label` usado para mostrar mensagens de sucesso ou erro na tela.


### 🧪 7. **Testando a Aplicação**

* Execute o projeto.
* Acesse a página `Cadastro.aspx`.
* Preencha os campos.
* Clique em **Cadastrar**.
* Verifique a mensagem de sucesso.
* Confirme os dados no SQL Server:

  * Clique com o botão direito na tabela `Funcionarios` → **Mostrar Dados da Tabela**.

</details>

<br>

## MVC

### Seção 09: MVC com o novo layout CRM

<details>
    <summary><strong>Criando projeto MVC .Net C#</strong></summary>
    <br />
    <div align="left">

<a href="https://www.udemy.com/course/aprenda-a-programar-em-net-mvc-e-sql/learn/lecture/19099006#learning-tools">**Link da Aula**</a>

## 🏗️ Estrutura Web Forms x MVC

### 📋 Web Forms:

* Cada `.aspx` possui HTML **acoplado ao C# (code-behind)**.
* Exemplo: `Cadastro.aspx` + `Cadastro.aspx.cs`
* Menos organizado para grandes projetos.

### 🏛️ MVC (Model View Controller):

* **Separação de responsabilidades**:

  * **Model**: classe que representa os dados (ex: `Funcionario.cs`)
  * **View**: apenas HTML/Razor (`.cshtml`)
  * **Controller**: lógica de programação (`FuncionarioController.cs`)
* Estrutura padrão:

  ```
  /Models
  /Views
    /Funcionario
      Index.cshtml
  /Controllers
    FuncionarioController.cs
  ```

## 📦 Preparação do Projeto MVC

### ✅ Etapas realizadas:

1. **Criado novo projeto ASP.NET Web Application (MVC)**:

   * Nome: `CadastroComDesignMVC`
   * Tipo: `MVC`

2. **Explicação da estrutura MVC**:

   * Views → HTML/Razor.
   * Controllers → lógica de acesso e retorno.
   * Models → dados do sistema.

## 🎨 Aplicando Layout no MVC

### 🔄 Etapas para aplicar layout visual (o mesmo do Web Forms):

1. **Copiou as pastas do template** (`css`, `js`, `lib`) para o novo projeto:

   * Botão direito no projeto → **Abrir pasta no Explorer**
   * Colou os arquivos dentro da pasta do projeto
   * Voltou ao Visual Studio e clicou com botão direito nas pastas → **Incluir no projeto**

2. **Aplicou o HTML do layout no arquivo `_Layout.cshtml`**:

   * Caminho: `/Views/Shared/_Layout.cshtml`
   * Substituiu a parte do `<body>` por `@RenderBody()` e inseriu o HTML do template.

3. **Limpou a página inicial `Index.cshtml`** dentro de `/Views/Home` para começar do zero.

4. **Editou o menu HTML** dentro do layout para deixar apenas a opção “Cadastro”.

## ✍️ Pontos Importantes

* MVC facilita o **reaproveitamento de layout** e **organização do código**.
* A separação clara entre camadas melhora a **manutenção** e o **desempenho** do sistema.
* O uso de layout centralizado em `_Layout.cshtml` torna fácil mudar a aparência de **todas as páginas**.

## ✅ Resumo Visual da Transição

| Aspecto               | Web Forms              | MVC                       |
| --------------------- | ---------------------- | ------------------------- |
| Organização           | Menos separada         | Alta separação de camadas |
| Código HTML           | `.aspx`                | `.cshtml` (`Views`)       |
| Lógica C#             | Code-behind `.aspx.cs` | Controllers               |
| Layout compartilhado  | Master Page            | `_Layout.cshtml`          |
| Facilidade de escalar | Baixa                  | Alta                      |

</details>

### Seção 10: Tela de cadastro funcionários com Entity Framework no MVC C#

<details>
    <summary><strong>Cadastro de funcionários com Entity</strong></summary>
    <br />
    <div align="left">

<a href="https://www.udemy.com/course/aprenda-a-programar-em-net-mvc-e-sql/learn/lecture/19099128#learning-tools">**Link da Aula**</a>

### 1. **Conexão com o Banco de Dados**

* Adicionou um novo **modelo de dados ADO.NET Entity Data Model**:

  * Nome: `MeuBanco`
  * Tipo: **Database First** (baseado no banco já existente).
  * Selecionou as tabelas `Funcionarios` e `Departamentos`.
  * EF gerou os modelos com base no banco automaticamente.

### 2. **Compilação do Projeto**

* Importante compilar o projeto após adicionar o modelo, para o Visual Studio reconhecer os modelos no scaffold.

## 🛠️ Criando o Controller com Scaffold (CRUD Automático)

### Etapas:

* Botão direito na pasta `Controllers` → **Adicionar → Novo Scaffold**.
* Tipo: `MVC Controller with views, using Entity Framework`.
* Modelo: `Funcionario` (ou `Funcionarios`).
* Contexto: `MeuBancoEntities`.
* Nome do Controller: `FuncionariosController`.

🔁 Isso gerou automaticamente:

* `FuncionariosController.cs`
* Views dentro de `/Views/Funcionarios`:

  * `Create.cshtml`
  * `Edit.cshtml`
  * `Delete.cshtml`
  * `Details.cshtml`
  * `Index.cshtml`

## 🔗 Ligando o Menu ao Controller

### Dentro do menu HTML (`_Layout.cshtml`):

```html
<li><a href="/Funcionarios">Cadastro</a></li>
```

> `Funcionarios` é o nome do controller sem o "Controller" no final.

## 🎨 Corrigindo o Layout Visual (CSS/JS)

### Problema:

Os arquivos CSS e JS não carregavam corretamente.

### Solução:

Usar **URLs relativas com `~/`**, ex:

```html
<link rel="stylesheet" href="~/css/style.css" />
<script src="~/js/script.js"></script>
```

> Em Razor (`.cshtml`), usar `@Url.Content("~/caminho")` ou `asp-append-version="true"` se usar Tag Helpers.

---

## ✅ Funcionalidades já disponíveis

Sem programar uma linha, o MVC criou as telas com as funções abaixo:

| Função   | URL                       | Descrição                        |
| -------- | ------------------------- | -------------------------------- |
| Listar   | `/Funcionarios`           | Lista todos os funcionários      |
| Criar    | `/Funcionarios/Create`    | Formulário para adicionar novo   |
| Editar   | `/Funcionarios/Edit/1`    | Editar funcionário com ID 1      |
| Detalhes | `/Funcionarios/Details/1` | Detalhes do funcionário com ID 1 |
| Excluir  | `/Funcionarios/Delete/1`  | Tela para confirmar a exclusão   |

</details>