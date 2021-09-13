using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class find_animal : System.Web.UI.Page
    {
        private Function function;

        public find_animal()
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
            findId.Value = function.IsExist($@"SELECT TOP 1 FindId FROM FindAnswer WHERE LangType='English' AND QuestionType='Animal' ORDER BY NEWID()");
            AnswerId.Value = function.IsExist($@"SELECT AnswerPic FROM FindAnswer Where FindId='{findId.Value}'");
            lblQuestion.Text = function.IsExist($@"SELECT Question FROM FindAnswer Where FindId='{findId.Value}'");
            audioLearn.Src = function.IsExist($@"SELECT Audio FROM FindAnswer Where FindId='{findId.Value}'");
            function.LoadDataList(dataOptions, $@"SELECT Picture FROM AnswerPic WHERE FindId='{findId.Value}' ORDER BY NEWID()");

        }

        protected void imgPicture10_OnClick(object sender, ImageClickEventArgs e)
        {
            audioLearn.Src = "";
            ImageButton image = (ImageButton)sender;
            if (AnswerId.Value == image.ImageUrl)
            {
                Question("Your answer is correct", "s");
            }
            else
            {
                Question("Your answer is incorrect", "e");
            }
            
        }

        protected void lnkOk_OnClick(object sender, EventArgs e)
        {
            audioQuiz.Src = "";
            alertModalBg.Visible = false;
            findId.Value = function.IsExist($@"SELECT TOP 1 FindId FROM FindAnswer WHERE LangType='English' AND QuestionType='Animal' ORDER BY NEWID()");
            AnswerId.Value = function.IsExist($@"SELECT AnswerPic FROM FindAnswer Where FindId='{findId.Value}'");
            lblQuestion.Text = function.IsExist($@"SELECT Question FROM FindAnswer Where FindId='{findId.Value}'");
            audioLearn.Src = function.IsExist($@"SELECT Audio FROM FindAnswer Where FindId='{findId.Value}'");
            function.LoadDataList(dataOptions, $@"SELECT Picture FROM AnswerPic WHERE FindId='{findId.Value}' ORDER BY NEWID()");

        }
        private void Question(string text, string type)
        {
            alertModalBg.Visible = true;
            alertMsg.InnerText = text;
            if (type == "s")
            {
                alertMsg.Style.Add("color", "green");
                alertImg.Src = "/MenuLink/app-file/success.gif";
                audioQuiz.Src = "/MenuLink/app-file/win.mp3";
            }
            else
            {
                alertMsg.Style.Add("color", "red");
                alertImg.Src = "/MenuLink/app-file/error.gif";
                audioQuiz.Src = "/MenuLink/app-file/loss.mp3";

            }
        }
    }
}