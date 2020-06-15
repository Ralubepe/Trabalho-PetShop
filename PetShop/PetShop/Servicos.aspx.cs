using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class Servicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {

                    Usuario usuario = (Usuario)Session["usuario_logado"];                   
                }
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void btnAvancar_Click(object sender, EventArgs e)
        {
            string nomePet = txtNomePet.Text;
            string especie = rblEspecie.Text;            
            string servico = rblServico.Text;
            string data = rblData.Text;
            string horario = rblHorario.Text;
            
            SistemaPetShopEntities conexao = new SistemaPetShopEntities();

            Servico s = new Servico();
            s.NomePet = txtNomePet.Text;
            s.Especie = rblEspecie.Text;
            s.Servico1 = rblServico.Text;
            s.Data = rblData.Text;
            s.Horario = rblHorario.Text;
            
            conexao.Servico.Add(s);
            conexao.SaveChanges();

            Response.Write("<script>alert('Agendamento realizado com sucesso!');</script>");                
            
        }

        private void limpar()
        {
            txtNomePet.Text = string.Empty;
            rblEspecie.Text = string.Empty;
            rblServico.Text = string.Empty;            
        }
    }
}