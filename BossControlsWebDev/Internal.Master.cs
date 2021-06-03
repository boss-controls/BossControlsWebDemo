using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BossControlsWeb2
{
    public partial class Internal : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Security.CurrentUser == null)
            {
                Session["ReturnURL"] = Request.Url.AbsoluteUri;
                Response.Redirect("~/Login.aspx");
            }

            if (!Page.IsPostBack)
            {

                //BindDropdownsToLookup(Page.Controls);
            }

        }
    }
}