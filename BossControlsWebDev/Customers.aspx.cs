using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BossControlsWeb2
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //dsCustomers.FilterExpression = "c_Exosite_Portal_ID IS NOT NULL";
        }

        protected void rbFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbFilter.SelectedIndex == 0)
            {
                dsCustomers.FilterExpression = null;
            }
            if (rbFilter.SelectedIndex == 1)
            {
               dsCustomers.FilterExpression = "c_Exosite_Portal_ID IS NOT NULL";
            }
            if (rbFilter.SelectedIndex == 2)
            {
               dsCustomers.FilterExpression = "c_Exosite_Portal_ID IS NULL";
            }
            if (rbFilter.SelectedIndex == 3)
            {
                dsCustomers.FilterExpression = "c_Exosite_Portal_ID IS NOT NULL";
            }

        }

        protected void gvCustomers_PreRender(object sender, EventArgs e)
        {
            gvCustomers.UseAccessibleHeader = true;
            gvCustomers.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}