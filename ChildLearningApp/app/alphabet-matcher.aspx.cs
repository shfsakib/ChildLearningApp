using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class alphabet_matcher : System.Web.UI.Page
    {
        private Function function;

        public alphabet_matcher()
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
            matchId.Value = function.IsExist($@"SELECT TOP 1 MatchId FROM CharacterMatcher WHERE Type='Alphabet' ORDER BY MatchId");
            lblAlpha.Text = function.IsExist($@"SELECT TOP 1 Answer FROM CharacterMatcher WHERE Type='Alphabet' AND MatchId='{matchId.Value}' ORDER BY MatchId");
            imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture FROM CharacterMatcher WHERE Answer='{lblAlpha.Text}' AND Type='Alphabet'  AND MatchId='{matchId.Value}'");
        }

        protected void match_OnClick(object sender, EventArgs e)
        {
            Next();
        }

        private void Next()
        {
            string match = function.IsExist($@"SELECT TOP 1 MatchId FROM CharacterMatcher WHERE Type='Alphabet' AND MatchId>'{matchId.Value}' ORDER BY MatchId ASC");
            if (match != "")
            {
                matchId.Value = match;
                lblAlpha.Text = function.IsExist($@"SELECT TOP 1 Answer FROM CharacterMatcher WHERE Type='Alphabet' AND MatchId='{matchId.Value}' ORDER BY MatchId");
                imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture FROM CharacterMatcher WHERE Answer='{lblAlpha.Text}' AND Type='Alphabet'  AND MatchId='{matchId.Value}'");

            }
            else
            {
                Load();
            }
        }
        private void Prev()
        {
            string match = function.IsExist($@"SELECT TOP 1 MatchId FROM CharacterMatcher WHERE Type='Alphabet' AND MatchId<'{matchId.Value}' ORDER BY MatchId DESC");
            if (match != "")
            {
                matchId.Value = match;
                lblAlpha.Text = function.IsExist($@"SELECT TOP 1 Answer FROM CharacterMatcher WHERE Type='Alphabet' AND MatchId='{matchId.Value}' ORDER BY MatchId DESC");
                imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture FROM CharacterMatcher WHERE Answer='{lblAlpha.Text}' AND Type='Alphabet'  AND MatchId='{matchId.Value}'");
            }
            else
            {
                Load();
            }
        }
        protected void lnkNext_OnClick(object sender, EventArgs e)
        {
            Next();
        }

        protected void lnkPrev_OnClick(object sender, EventArgs e)
        {
            Prev();
        }

        protected void lnkOk_OnClick(object sender, EventArgs e)
        {
            match_OnClick(sender, e);
        }
    }
}