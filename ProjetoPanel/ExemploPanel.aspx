<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExemploPanel.aspx.cs" Inherits="ProjetoPanel.ExemploPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulário de Informações</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 300px;
            padding: 20px;
        }

        .panel {
            width: 100%;
            text-align: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e6f3e6;
            border-radius: 10px;
            margin-bottom: 20px;
            padding: 0;
            border: 0;
        }

        .textbox-rounded {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 5px;
            width: 200px;
        }

        .visible {
            display: block;
        }

        .btn {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="Panel1" runat="server" class="panel visible">
                <h2>Informações Pessoais</h2>
                <asp:TextBox ID="txtNome" runat="server" placeholder="Nome" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:TextBox ID="txtSobrenome" runat="server" placeholder="Sobrenome" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:TextBox ID="txtGenero" runat="server" placeholder="Gênero" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:TextBox ID="txtCelular" runat="server" placeholder="Celular" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:Button ID="btnProximo1" runat="server" Text="Próximo" OnClick="btnProximo1_Click" CssClass="btn" />
            </div>
            <div id="Panel2" runat="server" class="panel">
                <h2>Detalhes de Endereço</h2>
                <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:TextBox ID="txtCidade" runat="server" placeholder="Cidade" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:TextBox ID="txtCEP" runat="server" placeholder="CEP" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" CssClass="btn" />
                <asp:Button ID="btnProximo2" runat="server" Text="Próximo" OnClick="btnProximo2_Click" CssClass="btn" />
            </div>
            <div id="Panel3" runat="server" class="panel">
                <h2>Área de Login</h2>
                <asp:TextBox ID="txtUsuario" runat="server" placeholder="Usuário" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" placeholder="Senha" CssClass="textbox-rounded"></asp:TextBox><br /><br />
                <asp:Button ID="btnVoltar2" runat="server" Text="Voltar" OnClick="btnVoltar2_Click" CssClass="btn" />
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="btn" />
                <div style="margin-top: 10px;">
                    <asp:Label ID="lblAviso" runat="server" Text="" style="display: block;"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
