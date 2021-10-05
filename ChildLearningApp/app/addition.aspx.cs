using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class addition : System.Web.UI.Page
    {
        private Function function;

        public addition()
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
            lblQuestion.Text = function.IsExist($@"SELECT TOP 1 Question FROM Calculation WHERE Type='English' AND CalType='Addition' ORDER BY NEWID()");
            img1.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture1 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            img2.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture2 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            opt1.Text= function.IsExist($@"SELECT TOP 1 Option1 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            opt2.Text= function.IsExist($@"SELECT TOP 1 Option2 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            hiddenAns.Value= function.IsExist($@"SELECT TOP 1 Answer FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
        }

        protected void lnkOk_OnClick(object sender, EventArgs e)
        {
            audioQuiz.Src = "";
            alertModalBg.Visible = false;
            lblQuestion.Text = function.IsExist($@"SELECT TOP 1 Question FROM Calculation WHERE Type='English' AND CalType='Addition' ORDER BY NEWID()");
            img1.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture1 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            img2.ImageUrl = function.IsExist($@"SELECT TOP 1 Picture2 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            opt1.Text = function.IsExist($@"SELECT TOP 1 Option1 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            opt2.Text = function.IsExist($@"SELECT TOP 1 Option2 FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");
            hiddenAns.Value = function.IsExist($@"SELECT TOP 1 Answer FROM Calculation WHERE Type='English' AND CalType='Addition' AND Question='{lblQuestion.Text}'");

        }

        protected void opt1_OnClick(object sender, EventArgs e)
        {
            if (hiddenAns.Value==opt1.Text)
            {
                Question("Your answer is correct", "s");
            }
            else
            {
                Question("Your answer is incorrect", "e");
            }
        }

        protected void opt2_OnClick(object sender, EventArgs e)
        {
            if (hiddenAns.Value == opt2.Text)
            {
                Question("Your answer is correct", "s");
            }
            else
            {
                Question("Your answer is incorrect", "e");
            }
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