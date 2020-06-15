using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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

            Usuario u = new Usuario();
            u.Usuario1 = txtUsuario1.Text;
            u.Senha = txtSenha1.Text;
            u.Nome = txtNome.Text;
            u.Sobrenome = txtSobrenome.Text;
            u.CPF = txtCPF.Text;
            u.Endereco = txtEndereco.Text;
            u.Numero = Convert.ToInt16(txtNumero.Text);
            u.Bairro = txtBairro.Text;
            u.Telefone = txtTelefone.Text;

            conexao.Usuario.Add(u);
            conexao.SaveChanges();

            Response.Write("<script>alert('Cadastro realizado com sucesso!');</script>");
            limpar();

        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            limpar();

        }
        
        private void limpar()
        {
            txtUsuario1.Text = string.Empty;
            txtSenha1.Text = string.Empty;
            txtNome.Text = string.Empty;
            txtSobrenome.Text = string.Empty;
            txtCPF.Text = string.Empty;
            txtEndereco.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtTelefone.Text = string.Empty;
        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}