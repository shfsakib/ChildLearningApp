using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChildLearningApp.app
{
    public partial class bangla_find_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBanglaAnimalFind_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/find-bangla-animal.aspx");

        }

        protected void imgBanglaNumberFind_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/find-bangla-number.aspx");

        }
    }
}