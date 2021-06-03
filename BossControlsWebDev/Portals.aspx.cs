using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BossControlsWeb2
{
    public partial class Portals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rbFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbFilter.SelectedIndex == 0)
            {
                odsPortals.FilterExpression = null;
            }
            if (rbFilter.SelectedIndex == 1)
            {
                odsPortals.FilterExpression = "email LIKE '%exosite.com'";
            }
            if (rbFilter.SelectedIndex == 2)
            {
                odsPortals.FilterExpression = "email NOT LIKE '%exosite.com'";
            }
            if (rbFilter.SelectedIndex == 3)
            {
                odsPortals.FilterExpression = "email NOT LIKE '%exosite.com' AND c_DBA IS NULL";
            }
            if (rbFilter.SelectedIndex == 4)
            {
                odsPortals.FilterExpression = "email NOT LIKE '%exosite.com' AND c_DBA IS NOT NULL";
            }

        }

        protected void gvPortals_PreRender(object sender, EventArgs e)
        {

            gvPortals.UseAccessibleHeader = true;
            gvPortals.HeaderRow.TableSection = TableRowSection.TableHeader;
          
        }
    }
}