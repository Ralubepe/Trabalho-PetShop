<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servicos.aspx.cs" Inherits="PetShop.Servicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblNomePet" runat="server" Text="Nome do Pet: "></asp:Label>
            <asp:TextBox ID="txtNomePet" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNomePet" runat="server" ControlToValidate="txtNomePet" ErrorMessage="Nome do Pet obrigatório!" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblEscolhaEspecie" runat="server" Font-Bold="True" Font-Underline="True" Text="Selecione a espécie do seu Pet:"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblEspecie" runat="server" AutoPostBack="True">
                <asp:ListItem>Gato</asp:ListItem>
                <asp:ListItem>Cachorro</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="vltEspecie" runat="server" ControlToValidate="rblEspecie" ErrorMessage="Selecione uma espécie!" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblEspecie" runat="server" Font-Bold="True" Font-Underline="True" Text="Selecione o Serviço:"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblServico" runat="server" AutoPostBack="True">
                <asp:ListItem>Banho &amp; Tosa Completa</asp:ListItem>
                <asp:ListItem>Banho &amp; Tosa Higiênica</asp:ListItem>
                <asp:ListItem>Banho</asp:ListItem>
                <asp:ListItem>Tosa</asp:ListItem>
                <asp:ListItem>Corte de Unha</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="vltServico" runat="server" ControlToValidate="rblServico" ErrorMessage="Selecione o serviço desejado!" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblData" runat="server" Font-Bold="True" Font-Underline="True" Text="Selecione um dia da semana:"></asp:Label>
            <asp:RadioButtonList ID="rblData" runat="server" AutoPostBack="True">
                <asp:ListItem>Segunda-Feira</asp:ListItem>
                <asp:ListItem>Terça-Feira</asp:ListItem>
                <asp:ListItem>Quarta-Feira</asp:ListItem>
                <asp:ListItem>Quinta-Feira</asp:ListItem>
                <asp:ListItem>Sexta-Feira</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="vltData" runat="server" ControlToValidate="rblData" ErrorMessage="Selecione um dia da semana!" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblHorario" runat="server" Font-Bold="True" Font-Underline="True" Text="Selecione um horário:"></asp:Label>
            <asp:RadioButtonList ID="rblHorario" runat="server" AutoPostBack="True">
                <asp:ListItem>08:00 - 09:00</asp:ListItem>
                <asp:ListItem>09:00 - 10:00</asp:ListItem>
                <asp:ListItem>10:00 - 11:00</asp:ListItem>
                <asp:ListItem>13:00 - 14:00</asp:ListItem>
                <asp:ListItem>14:00 - 15:00</asp:ListItem>
                <asp:ListItem>15:00 - 16:00</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rblHorario" ErrorMessage="Selecione um horário!" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnAvancar" runat="server" OnClick="btnAvancar_Click" Text="Concluir Agendamento" Width="148px" />
        &nbsp;<br />
            <br />
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Menu Principal" />
        </div>
    </form>
</body>
</html>
