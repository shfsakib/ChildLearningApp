using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChildLearningApp.app
{
    public partial class find_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgFindAnimal_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/find-animal.aspx");
        }

        protected void imgFindNum_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/find-number.aspx");
        }
    }
}