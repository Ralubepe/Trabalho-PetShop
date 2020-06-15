<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PetShop.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="vsLogin" runat="server" ForeColor="Red" />
            <br />
            <br />
            <br />
            <asp:Label ID="lblLogin" runat="server" Text="Usuário: "></asp:Label>
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltUsuario1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Usuário obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblSenha" runat="server" Text="Senha: "></asp:Label>
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltSenha1" runat="server" ControlToValidate="txtSenha" ErrorMessage="Senha obrigatória" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
            <br />
            <br />
            <asp:Label ID="lblCriar" runat="server" Text="Não possui conta?"></asp:Label>
            <asp:Button ID="btnCriar" runat="server" OnClick="btnCriar_Click" Text="Criar" />
        </div>
    </form>
</body>
</html>
