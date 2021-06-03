using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BossControlsWeb2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Security.SecurityResponse LoginResponse = Security.Login(txtEmail.Text, txtPassword.Text);
            //BAD LOGIN
            if (LoginResponse.success == false)
            {
                pnlError.Visible = true;
                lblError.Text = LoginResponse.error;
                return;
            }

            //SUCCESS IS HANDLED IN THE LOGIN FUNCTION
        }
    }
}