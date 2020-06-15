<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="PetShop.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblConsultaUsuario" runat="server" Font-Bold="True" Font-Underline="True" Text="Consulta de Usuário:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtBuscaUsuario" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            <br />
            <br />
            <asp:GridView ID="gridUsuarios" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />
                    <asp:BoundField DataField="Sobrenome" HeaderText="Sobrenome" />
                    <asp:BoundField DataField="CPF" HeaderText="C.P.F." />
                    <asp:BoundField DataField="Endereco" HeaderText="Endereço" />
                    <asp:BoundField DataField="Numero" HeaderText="Nº:" />
                    <asp:BoundField DataField="Bairro" HeaderText="Bairro" />
                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" />
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
            <br />
            <br />
            <asp:Label ID="lblConsultaAgenda" runat="server" Font-Bold="True" Font-Underline="True" Text="Consulta de Agenda:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtBuscaAgenda" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscarAgenda" runat="server" OnClick="btnBuscarAgenda_Click" Text="Buscar" />
            <br />
            <asp:GridView ID="gridAgenda" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="NomePet" HeaderText="Nome do Pet" />
                    <asp:BoundField DataField="Especie" HeaderText="Espécie" />
                    <asp:BoundField DataField="Servico" HeaderText="Serviço" />
                    <asp:BoundField DataField="Data" HeaderText="Dia" />
                    <asp:BoundField DataField="Horario" HeaderText="Horário" />
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
        </div>
    </form>
</body>
</html>
