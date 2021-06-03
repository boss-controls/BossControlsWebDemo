using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BossControlsWeb2
{
    public partial class Customer : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            if (IsPostBack)
            {
                
                   
            }

        }

        protected void MenuTab_MenuItemClick(object sender, MenuEventArgs e)
        {
            MultiView1.ActiveViewIndex = Int32.Parse(e.Item.Value);
           
        }
        protected void fvCustomer_OnDataBound(object sender, EventArgs e)
        {
            if (fvCustomer.PageCount == 0)
            {
                fvCustomer.ChangeMode(FormViewMode.Insert);


            }
        }
        protected void fvComtact_OnDataBound(object sender, EventArgs e)
        {
            if (fvComtact.PageCount == 0)
            {
                fvComtact.ChangeMode(FormViewMode.Insert);


            }

        }
        //Request.QueryString["c_seq_id"]

        protected void fvComtact_ItemCommand(object sender, System.Web.UI.WebControls.FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Insert")
            {
                if (fvComtact.CurrentMode == FormViewMode.Insert)
                {
                    TextBox txt1 = (TextBox)fvComtact.FindControl("tbcc_c_seq_id3");
                    
                    txt1.Text = Request.QueryString["c_seq_id"];


                    //Page.Response.Redirect(Page.Request.Url.ToString(), false);
                    //Context.ApplicationInstance.CompleteRequest();
                    //odsContacts.DataBind();
                    //gvContacts.DataBind();
                }
            }

        }
        protected void odsCust_Inserted(object sender, ObjectDataSourceStatusEventArgs e)
        {


            Response.Redirect("~/Customer.aspx?c_seq_id=" + (decimal)e.ReturnValue);
        }

        protected void odsCust_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void odsComtact_Inserted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            odsContacts.DataBind();
            gvContacts.DataBind();
        }

        protected void GridView2_PreRender(object sender, EventArgs e)
        {
            GridView2.UseAccessibleHeader = true;
            GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void gvContacts_PreRender(object sender, EventArgs e)
        {
            gvContacts.UseAccessibleHeader = true;
            gvContacts.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void gvUser_PreRender(object sender, EventArgs e)
        {
            gvUser.UseAccessibleHeader = true;
            gvUser.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}