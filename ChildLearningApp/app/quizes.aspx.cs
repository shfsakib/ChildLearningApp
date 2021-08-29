using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class quizes : System.Web.UI.Page
    {
        private Function func;
        HttpCookie quiz = new HttpCookie("QuizLevel");
        HttpCookie quizData = HttpContext.Current.Request.Cookies["QuizLevel"];
        public quizes()
        {
            func = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (quizData == null)
                {
                    quiz["level"] = "1";
                    quiz["score"] = "0";
                    quiz.Expires = DateTime.Now.AddYears(300);
                    Response.Cookies.Add(quiz);
                }
                else
                {
                    if (quizData["level"] == "1")
                    {
                        quiz["level"] = "1";
                        quiz["score"] = "0";
                        quiz.Expires = DateTime.Now.AddYears(300);
                        Response.Cookies.Add(quiz);
                    }
                }
                Load();
            }
        }

        private void Load()
        {
            string maxLevel = func.IsExist("SELECT MAX(LEVELID) FROM Questions");
            if (Convert.ToInt32(lblLevel.Text) > Convert.ToInt32(maxLevel))
            {
                quizData = null;
                quiz["level"] = "1";
                quiz["score"] = "0";
                lblLevel.Text = "1";
                quiz.Expires = DateTime.Now.AddYears(300);
                Response.Cookies.Add(quiz);
            }

            panelQuiz.Visible = true; 

            if (quizData != null)
            {
                lblHigh.Text = func.IsExist("SELECT HighScore FROM HighScore");
                lblLevel.Text = quizData["level"].ToString();
                lblScore.Text = quizData["score"].ToString();
                lblQuestion.Text =
                      func.IsExist(
                          $"SELECT TOP 1 Question FROM Questions WHERE LevelId='{lblLevel.Text}' ORDER BY NEWID()");
                lnkA.Text = func.IsExist($"SELECT OptionA FROM Questions WHERE Question='{lblQuestion.Text}'");
                lnkB.Text = func.IsExist($"SELECT OptionB FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenAns.Value =
                    func.IsExist($"SELECT Answer FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenPoint.Value =
                    func.IsExist($"SELECT Point FROM Questions WHERE Question='{lblQuestion.Text}'");
            }
        }
        protected void lnkA_OnClick(object sender, EventArgs e)
        {
            if (lnkA.Text == hiddenAns.Value)
            {
                Question("Your answer is correct", "s");
                Session["correct"] = Convert.ToInt32(Session["correct"]) + 1;
            }
            else
            {
                Question("Your answer is incorrect", "e");
            }

            quiz["Level"] = lblLevel.Text;
            quiz["score"] = (Convert.ToInt32(quizData["score"]) + Convert.ToInt32(hiddenPoint.Value)).ToString();
            quiz.Expires = DateTime.Now.AddYears(300);
            Response.Cookies.Add(quiz);
        }

        protected void lnkB_OnClick(object sender, EventArgs e)
        {
            if (lnkB.Text == hiddenAns.Value)
            {
                Question("Your answer is correct", "s");
                Session["correct"] = Convert.ToInt32(Session["correct"]) + 1;
            }
            else
            {
                Question("Your answer is incorrect", "e");
            }
            quiz["Level"] = lblLevel.Text;

            quiz["score"] = (Convert.ToInt32(quizData["score"]) + Convert.ToInt32(hiddenPoint.Value)).ToString();
            quiz.Expires = DateTime.Now.AddYears(300);
            Response.Cookies.Add(quiz);
        }

        protected void lnkOk_OnClick(object sender, EventArgs e)
        {
            alertModalBg.Visible = false;
            lblHigh.Text = func.IsExist("SELECT HighScore FROM HighScore");
            //lblLevel.Text = quizData["level"].ToString();
            lblScore.Text = quizData["score"].ToString();
            string correct = Session["correct"].ToString();
            if (Convert.ToInt32(correct) > 3)
            {
                lblLevel.Text = (Convert.ToInt32(quizData["level"].ToString()) + 1).ToString();
                quiz["level"] = (Convert.ToInt32(quizData["level"].ToString()) + 1).ToString();
                quiz["score"] = quizData["score"];
                quiz.Expires = DateTime.Now.AddYears(300);
                Response.Cookies.Add(quiz);
                quizData = HttpContext.Current.Request.Cookies["QuizLevel"];
                Session["correct"] = 0;
            }
            if (lblHigh.Text == "0")
            {
                func.Execute("truncate table highscore");
                func.Execute("INSERT INTO HighScore(HighScore) VALUES('" + quizData["score"].ToString() + "')");
            }
            else if (Convert.ToInt32(lblHigh.Text) <= Convert.ToInt32(lblScore.Text))
            {
                func.Execute("truncate table highscore");
                func.Execute("INSERT INTO HighScore(HighScore) VALUES('" + quizData["score"].ToString() + "')");
            }
            lblQuestion.Text = func.IsExist($"SELECT TOP 1 Question FROM Questions WHERE LevelId='{lblLevel.Text}' ORDER BY NEWID()");
            lnkA.Text = func.IsExist($"SELECT OptionA FROM Questions WHERE Question='{lblQuestion.Text}'");
            lnkB.Text = func.IsExist($"SELECT OptionB FROM Questions WHERE Question='{lblQuestion.Text}'");
            hiddenAns.Value = func.IsExist($"SELECT Answer FROM Questions WHERE Question='{lblQuestion.Text}'");
            hiddenPoint.Value = func.IsExist($"SELECT Point FROM Questions WHERE Question='{lblQuestion.Text}'");
            audioQuiz.Src = "";
            string maxLevel = func.IsExist("SELECT MAX(LEVELID) FROM Questions");
            if (Convert.ToInt32(lblLevel.Text) > Convert.ToInt32(maxLevel))
            {
                Question("Congratulations! You have successfully completed all levels.", "s");
                quizData = null;
                quiz["level"] = "1";
                quiz["score"] = "0";
                quiz.Expires = DateTime.Now.AddYears(300);
                Response.Cookies.Add(quiz);
                lblHigh.Text = func.IsExist("SELECT HighScore FROM HighScore");
                lblLevel.Text = "1";
                lblScore.Text = "0";
                lblQuestion.Text = func.IsExist($"SELECT TOP 1 Question FROM Questions WHERE LevelId='{lblLevel.Text}' ORDER BY NEWID()");
                lnkA.Text = func.IsExist($"SELECT OptionA FROM Questions WHERE Question='{lblQuestion.Text}'");
                lnkB.Text = func.IsExist($"SELECT OptionB FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenAns.Value = func.IsExist($"SELECT Answer FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenPoint.Value = func.IsExist($"SELECT Point FROM Questions WHERE Question='{lblQuestion.Text}'");
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