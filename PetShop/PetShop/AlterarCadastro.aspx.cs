using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class AlterarCadastro : System.Web.UI.Page
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
            //Não entendemos qual o erro com este, pois no Consulta o databind funcionou da mesma maneira.
            gridUsuarios.DataBind();            
        }

        private void atualizaGrid(SistemaPetShopEntities conexao)
        {
            var lista = conexao.Usuario.ToList();
            gridUsuarios.DataSource = lista;
            //Ocorreu algum problema de reconhecimento deste DataBind abaixo, o que não permitiu a exibição do grid para selecionar qual usuario alterar, lembrando que não sabemos como restringir para usuario poder alterar somente o dele.
            gridUsuarios.DataBind();    
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string usuario1 = txtUsuario1.Text;
            string senha1 = txtSenha1.Text;
            string nome = txtNome.Text;
            string sobrenome = txtSobrenome.Text;
            string CPF = txtCPF.Text;
            string endereco = txtEndereco.Text;
            int numero = Convert.ToInt16(txtNumero.Text);
            string bairro = txtBairro.Text;
            string telefone = txtTelefone.Text;

            SistemaPetShopEntities conexao = new SistemaPetShopEntities();

            Usuario u = conexao.Usuario.FirstOrDefault(linha => linha.ID.ToString().Equals(gridUsuarios.SelectedValue.ToString()));            
            u.Usuario1 = txtUsuario1.Text;
            u.Senha = txtSenha1.Text;
            u.Nome = txtNome.Text;
            u.Sobrenome = txtSobrenome.Text;
            u.CPF = txtCPF.Text;
            u.Endereco = txtEndereco.Text;
            u.Numero = Convert.ToInt16(txtNumero.Text);
            u.Bairro = txtBairro.Text;
            u.Telefone = txtTelefone.Text;
                        
            conexao.SaveChanges();
            atualizaGrid(conexao);
            
            Response.Write("<script>alert('Alteração de cadastro realizado com sucesso!');</script>");
            
        }

        private void limpar()
        {
            txtNome.Text = string.Empty;
            txtSobrenome.Text = string.Empty;
            txtCPF.Text = string.Empty;
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            limpar();
        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }
    }
}