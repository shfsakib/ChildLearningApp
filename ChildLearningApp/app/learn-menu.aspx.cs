using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChildLearningApp.app
{
    public partial class learn_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgColor_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/learn-color.aspx");
        }

        protected void imgAnimal_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/learn-animal.aspx");

        }

        protected void imgMonth_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/learn-month.aspx");

        }

        protected void imgWeek_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/learn-week.aspx");

        }

        protected void imgShape_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/learn-shape.aspx");

        }
    }
}