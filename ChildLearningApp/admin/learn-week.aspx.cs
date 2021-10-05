using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class learn_week : System.Web.UI.Page
    {
        private Function function;
        Random random = new Random();
        public learn_week()
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
            function.LoadGrid(gridWeek, $@"SELECT * FROM LearnInfo WHERE Type='Week' ORDER BY Answer ASC");
        }
        private bool IsAnswer()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Answer FROM LearnInfo WHERE Answer=N'{txtAnswer.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtAnswer.Text == "")
            {
                function.ShowAlert(this, "Week name is required");
            }
            else if (IsAnswer())
            {
                function.ShowAlert(this, "Week name already exist");

            }
            else
            {
                string pic = "";

                //letter image code

                if (filePic.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + filePic.FileName;
                    filePic.PostedFile.SaveAs(imagePath);
                    pic = "/Image/" + val + filePic.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Picture is required");
                    return;
                }
                string letterAudio = "";
                //letter audio file code
                if (fileAudio.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Audio/") + val + fileAudio.FileName;
                    fileAudio.PostedFile.SaveAs(imagePath);
                    letterAudio = "/Audio/" + val + fileAudio.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Audio is required");
                    return;
                }
                string date = function.Date();
                bool ans = function.Execute($@"INSERT INTO LearnInfo(Answer,Picture,Type,Audio) VALUES('{txtAnswer.Text}','{pic}','Week','{letterAudio}')");
                if (ans)
                {
                    Load();
                    function.AlertWithRedirect(this, "Week added successfully", "/admin/learn-Week.aspx");
                }
                else
                {
                    function.ShowAlert(this, "Week added failed");
                }
            }
        }

        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            HiddenField id = (HiddenField)linkButton.Parent.FindControl("HiddenField1");
            bool ans = function.Execute($"DELETE FROM LearnInfo WHERE LearnId='{id.Value}'");
            if (ans)
            {
                Load();
            }
            else
            {
                function.ShowAlert(this, "Failed to remove week");
            }
        }
    }
}