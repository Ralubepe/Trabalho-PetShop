using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class Agendamento : System.Web.UI.Page
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

        protected void btnConcluir_Click(object sender, EventArgs e)
        {
            //DateTime Data = Calendar.SelectedDate;
            //string Horario = rblHorario.Text;            

            //SistemaPetShopEntities conexao = new SistemaPetShopEntities();

            //Agendamento a = new Agendamento();
            //a.Data = DateTime.;
                       

            //conexao.Agendamento.Add(a);

            Response.Write("<script>alert('Agendamento realizado com sucesso!');</script>");


            
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }
    }
}