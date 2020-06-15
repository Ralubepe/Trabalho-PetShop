<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agendamento.aspx.cs" Inherits="PetShop.Agendamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblData" runat="server" Font-Bold="True" Font-Underline="True" Text="Selecione uma data:"></asp:Label>
            <br />
            <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Label ID="lblHorario" runat="server" Font-Bold="True" Font-Underline="True" Text="Selecione um horário:"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblHorario" runat="server">
                <asp:ListItem>08:00 - 09:00</asp:ListItem>
                <asp:ListItem>09:00 - 10:00</asp:ListItem>
                <asp:ListItem>10:00 - 11:00</asp:ListItem>
                <asp:ListItem>13:00 - 14:00</asp:ListItem>
                <asp:ListItem>14:00 - 15:00</asp:ListItem>
                <asp:ListItem>15:00 - 16:00</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnConcluir" runat="server" OnClick="btnConcluir_Click" Text="Concluir Agendamento" />
            <br />
            <br />
            <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar ao Menu Principal" />
        </div>
    </form>
</body>
</html>
