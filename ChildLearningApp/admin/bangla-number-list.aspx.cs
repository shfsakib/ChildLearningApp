using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class bangla_number_list : System.Web.UI.Page
    {
        private Function function;

        public bangla_number_list()
        {
            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                function.CheckCookies();

                Load();
            }
        }
        private void Load()
        {
            function.LoadGrid(gridNumber, "SELECT * FROM LetterInfo WHERE LetterType='Bangla Number' ORDER BY Letter ASC");
        }
        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            HiddenField id = (HiddenField)linkButton.Parent.FindControl("HiddenField1");
            bool ans = function.Execute($"DELETE FROM LetterInfo WHERE LetterId='{id.Value}'");
            if (ans)
            {
                Load();
            }
            else
            {
                function.ShowAlert(this, "Failed to remove number");
            }
        }
    }
}