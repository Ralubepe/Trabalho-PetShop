<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterarCadastro.aspx.cs" Inherits="PetShop.AlterarCadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gridUsuarios" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Usuario" HeaderText="Usuário" />
                    <asp:BoundField DataField="Senha" HeaderText="Senha" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />
                    <asp:BoundField DataField="Sobrenome" HeaderText="Sobrenome" />
                    <asp:BoundField DataField="CPF" HeaderText="C.P.F." />
                    <asp:BoundField DataField="Endereco" HeaderText="Endereço" />
                    <asp:BoundField DataField="Numero" HeaderText="Nº:" />
                    <asp:BoundField DataField="Bairro" HeaderText="Bairro" />
                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" />
                    <asp:CommandField HeaderText="Selecionar" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblUsuario" runat="server" Text="Usuário: "></asp:Label>
            <asp:TextBox ID="txtUsuario1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltUsuario" runat="server" ControlToValidate="txtUsuario1" ErrorMessage="Usuario obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblSenha" runat="server" Text="Senha: "></asp:Label>
            <asp:TextBox ID="txtSenha1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltSenha" runat="server" ControlToValidate="txtSenha1" ErrorMessage="Senha obrigatória" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Nome obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblSobrenome" runat="server" ForeColor="Black" Text="Sobrenome: "></asp:Label>
            <asp:TextBox ID="txtSobrenome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltSobrenome" runat="server" ControlToValidate="txtSobrenome" ErrorMessage="Sobrenome obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblCpf" runat="server" Text="CPF: "></asp:Label>
            <asp:TextBox ID="txtCPF" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltCPF" runat="server" ControlToValidate="txtCPF" ErrorMessage="CPF obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblEndereço" runat="server" Text="Endereço: "></asp:Label>
            <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltEndereço" runat="server" ControlToValidate="txtEndereco" ErrorMessage="Endereço obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblNumero" runat="server" Text="Nº: "></asp:Label>
            <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltNumero" runat="server" ControlToValidate="txtNumero" ErrorMessage="Número da residencia obrigatória" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblBairro" runat="server" Text="Bairro: "></asp:Label>
            <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltBairro" runat="server" ControlToValidate="txtBairro" ErrorMessage="Bairro obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblTelefone" runat="server" Text="Telefone: "></asp:Label>
            <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vltTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Telefone obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnAlterar" runat="server" OnClick="btnCadastrar_Click" Text="Alterar" />
            <asp:Button ID="btnLimpar" runat="server" OnClick="btnLimpar_Click" Text="Limpar" />
            <asp:Button ID="btnPrincipal" runat="server" OnClick="btnLogar_Click" Text="Menu Principal" />
        </div>
    </form>
</body>
</html>
