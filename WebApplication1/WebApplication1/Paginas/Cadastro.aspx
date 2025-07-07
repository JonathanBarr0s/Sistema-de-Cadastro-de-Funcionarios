<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="WebApplication1.Paginas.Cadastro" %>

<asp:Content ID="Cadastro" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary">Cadastro de Funcionário</h4>
            <asp:Label ID="txtResp" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        </div>
        <div class="card-body">
            <form id="form1" runat="server">

                <div class="form-group">
                    <label for="nome">Nome</label>
                    <asp:TextBox ID="txtNome" class="form-control" runat="server" placeholder="Digite seu nome..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Sobrenome</label>
                    <asp:TextBox ID="txtSobrenome" class="form-control" runat="server" placeholder="Digite seu sobrenome..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="Digite seu email..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">RG</label>
                    <asp:TextBox ID="txtRg" class="form-control" runat="server" placeholder="Digite seu RG..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">CPF</label>
                    <asp:TextBox ID="txtCpf" class="form-control" runat="server" placeholder="Digite seu CPF..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Endereço</label>
                    <asp:TextBox ID="txtEndereco" class="form-control" runat="server" placeholder="Digite seu endereço..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Bairro</label>
                    <asp:TextBox ID="txtBairro" class="form-control" runat="server" placeholder="Digite seu bairro..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Cidade</label>
                    <asp:TextBox ID="txtCidade" class="form-control" runat="server" placeholder="Digite sua cidade..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Estado</label>
                    <asp:TextBox ID="txtEstado" class="form-control" runat="server" placeholder="Digite seu estado..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Departamento</label>
                    <asp:TextBox ID="txtDepartamento" class="form-control" runat="server" placeholder="Digite seu departamento..."></asp:TextBox>
                </div>

                <div class="form-group text-right">
                    <asp:Button type="submit" ID="Button1" class="btn btn-primary" runat="server" Text="Salvar" OnClick="Button1_Click" />
                </div>
            </form>
        </div>
    </div>

</asp:Content>
