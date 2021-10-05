using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChildLearningApp.app
{
    public partial class draw_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DrawBoard_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/drawing-board.aspx");

        }

        protected void imgAlphaMatcher_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/alphabet-matcher.aspx");

        }

        protected void imgNumberMatcher_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/number-matcher.aspx");

        }
    }
}