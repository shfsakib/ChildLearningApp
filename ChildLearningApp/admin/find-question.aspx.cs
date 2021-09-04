using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class add_find_question : System.Web.UI.Page
    {
        private Function function;
        Random random = new Random();

        public add_find_question()
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
            function.LoadGrid(gridFind, $"SELECT * FROM FindAnswer WHERE LangType='{ddlSearch.SelectedValue}'");
        }
        private bool IsExist()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Question FROM FindAnswer WHERE Question=N'{txtQuestion.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtQuestion.Text == "")
            {
                function.ShowAlert(this, "Question is required");
            }
            else if (IsExist())
            {
                function.ShowAlert(this, "Question already exist");
            }
            else if (ddlType.SelectedIndex <= 0)
            {
                function.ShowAlert(this, "Language type is required");
            }
            else if (ddlQuestType.SelectedIndex <= 0)
            {
                function.ShowAlert(this, "Question type is required");
            }
            else
            {
                string ans = "";
                string opt1 = "", opt2 = "", opt3 = "", audio = "";
                if (filePic.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + filePic.FileName;
                    filePic.PostedFile.SaveAs(imagePath);
                    ans = "/Image/" + val + filePic.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Answer is required");
                    return;
                }

                //opt1
                if (fileOpt1.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + fileOpt1.FileName;
                    fileOpt1.PostedFile.SaveAs(imagePath);
                    opt1 = "/Image/" + val + fileOpt1.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Answer is required");
                    return;
                }
                //opt2
                if (fileOpt2.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + fileOpt2.FileName;
                    fileOpt2.PostedFile.SaveAs(imagePath);
                    opt2 = "/Image/" + val + fileOpt2.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Answer is required");
                    return;
                }
                //opt3
                if (fileOpt3.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + fileOpt3.FileName;
                    fileOpt3.PostedFile.SaveAs(imagePath);
                    opt3 = "/Image/" + val + fileOpt3.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Answer is required");
                    return;
                }
                //audio
                if (fileAudio.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + fileAudio.FileName;
                    fileAudio.PostedFile.SaveAs(imagePath);
                    audio = "/Image/" + val + fileAudio.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Answer is required");
                    return;
                }
                string findId = function.GenerateId($@"SELECT MAX(FindId) FROM FindAnswer");
                bool result = function.Execute(
                        $@"INSERT INTO FindAnswer(FindId,Question,AnswerPic,Audio,LangType,QuestionType) VALUES('{findId}',N'{txtQuestion.Text}',N'{ans}',N'{audio}','{ddlType.SelectedValue}','{ddlQuestType.SelectedValue}')");
                if (result)
                {
                    function.Execute($@"INSERT INTO AnswerPic(FindId,Picture) VALUES('{findId}',N'{ans}')");
                    function.Execute($@"INSERT INTO AnswerPic(FindId,Picture) VALUES('{findId}',N'{opt1}')");
                    function.Execute($@"INSERT INTO AnswerPic(FindId,Picture) VALUES('{findId}',N'{opt2}')");
                    bool result2 = function.Execute($@"INSERT INTO AnswerPic(FindId,Picture) VALUES('{findId}',N'{opt3}')");
                    if (result2)
                    {
                        function.AlertWithRedirect(this, "Added successfully", "/admin/find-question.aspx");
                    }
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
            bool ans = function.Execute($"DELETE FROM FindAnswer WHERE FindId='{id.Value}'");
            if (ans)
            {
                bool ans2 = function.Execute($"DELETE FROM AnswerPic WHERE FindId='{id.Value}'");
                if (ans2)
                {
                    Load();
                }
            }
            else
            {
                function.ShowAlert(this, "Failed to remove calculation");
            }
        }

        protected void gridFind_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HiddenField id = (HiddenField)e.Row.FindControl("HiddenField1");
                DataList dataOptions = (DataList)e.Row.FindControl("dataOptions");
                function.LoadDataList(dataOptions, $@"SELECT    DISTINCT   AnswerPic.Picture
FROM            FindAnswer INNER JOIN
                         AnswerPic ON FindAnswer.FindId = AnswerPic.FindId WHERE  FindAnswer.FindId='{id.Value}'");
            }
        }
    }
}