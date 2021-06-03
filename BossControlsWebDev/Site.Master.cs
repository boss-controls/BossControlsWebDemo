using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BossControlsWeb2
{
    public partial class SiteMaster : MasterPage
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
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void BindDropdownsToLookup(ControlCollection controls)
        {
            //Get all dropdowns on the page
            //If they have a data-lookup attribute, fill it with records of that type from our Lookup table

            foreach (Control ctrl in controls)
            {
                if (object.ReferenceEquals(ctrl.GetType(), typeof(DropDownList)))
                {
                    DropDownList ddl = (DropDownList)ctrl;

                    //if (ddl.Attributes["data-lookup"] != null)
                    //{
                    //    ddl.AppendDataBoundItems = true;
                    //    string lookupType = ddl.Attributes["data-lookup"];
                    //    List<list_item> items = context.list_item.Where(l => l.li_category == lookupType & l.li_active == true).OrderBy(s => s.li_sequence).ThenBy(v => v.li_value).ToList();
                    //    ddl.DataSource = items;
                    //    ddl.DataValueField = "li_value";
                    //    ddl.DataTextField = "li_text";
                    //    ddl.DataBind();
                    //}

                }

                if (ctrl.HasControls())
                {
                    BindDropdownsToLookup(ctrl.Controls);
                }
            }

        }
    }
}