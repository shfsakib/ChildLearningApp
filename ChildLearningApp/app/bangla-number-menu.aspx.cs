using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChildLearningApp.app
{
    public partial class bangla_number_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBanglaNumber_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-number-list.aspx");
        }

        protected void imgBanglaAddition_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-addition.aspx");

        }

        protected void imgBanglaSubstraction_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-substration.aspx");

        }
    }
}