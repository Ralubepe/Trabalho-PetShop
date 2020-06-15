using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class Consulta : System.Web.UI.Page
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
                    SistemaPetShopEntities conexao = new SistemaPetShopEntities();
                    carregarGrid(conexao);                    
                }
            }
        }

        private void carregarGrid(SistemaPetShopEntities conexao)
        {
            var lista = conexao.Usuario.ToList();
            gridUsuarios.DataSource = lista;
            gridUsuarios.DataBind();

            var agenda = conexao.Servico.ToList();
            gridAgenda.DataSource = agenda;
            //Ocorreu algum erro, que não consiguimos corrigir, pois aparentemente esta certo,
            //no grid usuario acima funcionou, mas neste não e segue a mesma linha de raciocinio
            gridAgenda.DataBind();
        }
                

        protected void btnBuscar_Click(object sender, EventArgs e)
        {            
            SistemaPetShopEntities conexao = new SistemaPetShopEntities();
                        
            List<Usuario> listaBusca = conexao.Usuario.Where(linha => linha.Nome.Contains(txtBuscaUsuario.Text)).ToList();
                        
            gridUsuarios.DataSource = listaBusca;
            gridUsuarios.DataBind();
        }

        protected void btnBuscarAgenda_Click(object sender, EventArgs e)
        {
            SistemaPetShopEntities conexao = new SistemaPetShopEntities();

            List<Servico> agendaBusca = conexao.Servico.Where(linha => linha.NomePet.Contains(txtBuscaAgenda.Text)).ToList();

            gridAgenda.DataSource = agendaBusca;
            gridAgenda.DataBind();
        }
    }
}