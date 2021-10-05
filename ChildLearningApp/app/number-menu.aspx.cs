using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChildLearningApp.app
{
    public partial class number_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNumeric_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/number-list.aspx");
        }

        protected void imgAddtion_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/addition.aspx");
        }

        protected void imgSubstration_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/substraction.aspx");
        }
    }
}