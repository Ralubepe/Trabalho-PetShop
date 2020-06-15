using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string senha = txtSenha.Text;

            SistemaPetShopEntities conexao = new SistemaPetShopEntities();
            Usuario user = conexao.Usuario.FirstOrDefault(linha=>linha.Usuario1.Equals(usuario) && linha.Senha.Equals(senha));
            if(user != null)
            {
                Session["usuario_logado"] = user;
                Response.Redirect("Principal.aspx");
            }
        }

        protected void btnCriar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastro.aspx");
        }
    }
}