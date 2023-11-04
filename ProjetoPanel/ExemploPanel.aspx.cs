using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoPanel
{
    public partial class ExemploPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
        }

        protected void btnProximo1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNome.Text) || string.IsNullOrEmpty(txtSobrenome.Text) || string.IsNullOrEmpty(ddlGenero.Text) || string.IsNullOrEmpty(txtCelular.Text))
            {
                lblAviso1.Text = "Dados inválidos. Por favor, preencha os campos corretamente.";
                lblAviso1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                lblAviso1.Text = "";
            }
        }

        protected void btnProximo2_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtEndereco.Text) || string.IsNullOrEmpty(txtCidade.Text) || string.IsNullOrEmpty(txtCEP.Text))
            {
                lblAviso2.Text = "Dados inválidos. Por favor, preencha os campos corretamente.";
                lblAviso2.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                lblAviso2.Text = "";
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            lblAviso2.Text = "";
        }

        protected void btnVoltar2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            lblAviso3.Text = "";
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUsuario.Text) || string.IsNullOrEmpty(txtSenha.Text))
            {
                lblAviso3.Text = "Dados inválidos. Por favor, preencha os campos corretamente.";
                lblAviso3.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblAviso3.Text = "Dados enviados com sucesso!";
                lblAviso3.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}