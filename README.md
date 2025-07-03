# Sistema-de-Cadastro-de-Funcionarios

<details>
    <summary><strong>Seção 03: Instalando banco de dados SQL</strong></summary>
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