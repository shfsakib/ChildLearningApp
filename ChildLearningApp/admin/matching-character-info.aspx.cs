using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class matching_character_info : System.Web.UI.Page
    {
        private Function function;
        Random random = new Random();

        public matching_character_info()
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
            function.LoadGrid(gridFind, $"SELECT * FROM CharacterMatcher WHERE Type='{ddlSearch.SelectedValue}'");
        }
        private bool IsExist()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Answer FROM CharacterMatcher WHERE Answer=N'{txtAns.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtAns.Text == "")
            {
                function.ShowAlert(this, "Answer is required");
            }
            else if (IsExist())
            {
                function.ShowAlert(this, "Answer already exist");
            }
            else
            {
                string pic = "";
                if (filePic.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + filePic.FileName;
                    filePic.PostedFile.SaveAs(imagePath);
                    pic = "/Image/" + val + filePic.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Answer is required");
                    return;
                }
                bool ans = function.Execute($@"INSERT INTO CharacterMatcher(Picture,Answer,Type) VALUES(N'{pic}',N'{txtAns.Text}',N'{ddlQuestType.SelectedValue}')");
                if (ans)
                {
                    function.AlertWithRedirect(this, "Added successfully", "/admin/matching-character-info.aspx");
                }
                else
                {
                    function.ShowAlert(this, "Failed to add");
                }
            }
        }

        protected void ddlSearch_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            Load();
        }

        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            HiddenField id = (HiddenField)linkButton.Parent.FindControl("HiddenField1");
            bool ans = function.Execute($"DELETE FROM CharacterMatcher WHERE MatchId='{id.Value}'");
            if (ans)
            {
                Load();
            }
            else
            {
                function.ShowAlert(this, "Failed to remove calculation");
            }
        }
    }
}