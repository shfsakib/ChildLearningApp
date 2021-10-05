using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChildLearningApp.app
{
    public partial class bangla_learn_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBanglaAnimal_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-animal.aspx");

        }

        protected void imgBanglaMonth_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-months.aspx");

        }

        protected void imgBanglaWeek_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-week.aspx");

        }

        protected void imgBanglaShape_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-shape.aspx");

        }

        protected void imgBanglaColor_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/bangla-color.aspx");

        }
    }
}