using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class rhymes : System.Web.UI.Page
    {
        private Function func;

        public rhymes()
        {
            func = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                func.LoadGrid(gridRhyemes, "SELECT * FROM Rhymes ORDER BY RhymeName ASC");
            }
        }

        protected void lnkBack_OnClick(object sender, EventArgs e)
        {
            panelRhymes.Visible = true;
            panelVideo.Visible = false;
        }

        protected void btnRhyme_OnServerClick(object sender, EventArgs e)
        {
            HtmlAnchor anchor = (HtmlAnchor)sender;
            HiddenField link = (HiddenField)anchor.Parent.FindControl("link");
            videoFrame.Src = link.Value;
            panelVideo.Visible = true;
            panelRhymes.Visible = false;
        }
    }
}