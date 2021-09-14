using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class number_matcher : System.Web.UI.Page
    {
        private Function function;

        public number_matcher()
        {
            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load();
            }
        }

        private void Load()
        {
            lblAlpha.Text = function.IsExist($@"SELECT TOP 1 Answer FROM CharacterMatcher WHERE Type='Number' ORDER BY MatchId");
            imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture FROM CharacterMatcher WHERE Answer='{lblAlpha.Text}' AND Type='Number'");
        }
        protected void match_OnClick(object sender, EventArgs e)
        {

        }
    }
}