using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Paginas
{
    public partial class Cadastro : System.Web.UI.Page
    {
        private MeuBanco banco { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            banco = new MeuBanco();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Funcionarios funcionarios = new Funcionarios()
                {
                    Nome = txtNome.Text,
                    Sobrenome = txtSobrenome.Text,
                    Email = txtEmail.Text,
                    RG = txtRg.Text,
                    CPF = txtCpf.Text,
                    Endereco = txtEndereco.Text,
                    Bairro = txtBairro.Text,
                    Cidade = txtCidade.Text,
                    UF = txtEstado.Text,
                    Departamento = 1,
                };

                banco.Funcionarios.Add(funcionarios);
                banco.SaveChanges();
                txtResp.Text = "Cadastro efetuado com sucesso.";
            } catch (Exception exception)
            {
                txtResp.Text = exception.Message;
            }
        }
    }
}