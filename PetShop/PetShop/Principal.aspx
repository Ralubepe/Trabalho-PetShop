<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="PetShop.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUsuarioLogado" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; (<asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Sair</asp:LinkButton>
            )<br />
            <br />
        </div>
        <div>
            <br />
            <a href="Servicos.aspx">Agendar Atendimento</a>
            <br />    
            <br />  
            <a href="Consulta.aspx">Consultar Agendamentos</a>
            <br />          
            <br />  
            <a href="AlterarCadastro.aspx">Alterar Cadastro</a>
            <br />
            
        </div>
    </form>
</body>
</html>
