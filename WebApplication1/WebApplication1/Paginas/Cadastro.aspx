<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="WebApplication1.Paginas.Cadastro" %>

<asp:Content ID="Cadastro" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary">Cadastro de Funcionário</h4>
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
                    <asp:TextBox ID="TextCpf" class="form-control" runat="server" placeholder="Digite seu CPF..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Endereço</label>
                    <asp:TextBox ID="TextEndereco" class="form-control" runat="server" placeholder="Digite seu endereço..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Bairro</label>
                    <asp:TextBox ID="TextBairro" class="form-control" runat="server" placeholder="Digite seu bairro..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Cidade</label>
                    <asp:TextBox ID="TextCidade" class="form-control" runat="server" placeholder="Digite sua cidade..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Estado</label>
                    <asp:TextBox ID="TextEstado" class="form-control" runat="server" placeholder="Digite seu estado..."></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="email">Departamento</label>
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Digite seu departamento..."></asp:TextBox>
                </div>

                <div class="form-group text-right">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
            </form>
        </div>
    </div>

</asp:Content>
