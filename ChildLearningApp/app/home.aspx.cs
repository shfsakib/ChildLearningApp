using System;
using System.Collections.Generic;
using System.Linq;
using System.Speech.Synthesis;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class home : System.Web.UI.Page
    {
        private Function function;
        HttpCookie sound = new HttpCookie("Sound");
        HttpCookie quiz = new HttpCookie("QuizLevel");
        private SpeechSynthesizer speech;
        Random random = new Random();
        HttpCookie soundData = HttpContext.Current.Request.Cookies["Sound"];
        HttpCookie quizData = HttpContext.Current.Request.Cookies["QuizLevel"];
        public home()
        {
            speech = new SpeechSynthesizer();
            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["correct"] = 0;
                if (soundData == null)
                {
                    audioBg.Src = "../MenuLink/app-file/bg-music.mp3";
                }
                else if (soundData["play"].ToString() == "off")
                {
                    audioBg.Src = "";
                    btnMic.Visible = false;
                    btnMute.Visible = true;
                }
                else
                {
                    audioBg.Src = "../MenuLink/app-file/bg-music.mp3";
                }
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
            function.LoadGrid(gridAlpha, "SELECT * FROM ALPHABETINFO ORDER BY ALPHABET ASC");
            function.LoadGrid(gridNum, "SELECT * FROM Numeric ORDER BY Number ASC");
            function.LoadGrid(gridRhyemes, "SELECT * FROM Rhymes ORDER BY RhymeName ASC");
        }
        protected void btnAlpha_OnClick(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = false;
            panelWord.Visible = true;
        }
        protected void lnkHome_OnClick(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            panelWord.Visible = panelNumber.Visible = panelRhymes.Visible = panelQuiz.Visible = false;
        }
        protected void btnMic_OnServerClick(object sender, EventArgs e)
        {
            sound["play"] = "off";
            sound.Expires = DateTime.Now.AddYears(300);
            Response.Cookies.Add(sound);
            btnMic.Visible = false;
            audioBg.Src = "";
            btnMute.Visible = true;
        }
        protected void btnMute_OnServerClick(object sender, EventArgs e)
        {
            sound["play"] = "on";
            sound.Expires = DateTime.Now.AddYears(300);
            Response.Cookies.Add(sound);
            btnMic.Visible = true;
            btnMute.Visible = false;
            audioBg.Src = "../MenuLink/app-file/bg-music.mp3";
        }
        protected void btnNumeric_OnClick(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = false;
            panelNumber.Visible = true;
        }
        protected void btnSpeakWord_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            Label lblWord = (Label)linkButton.Parent.FindControl("lblWord");
            speech.SelectVoiceByHints(VoiceGender.Female, VoiceAge.Child);
            // to change VoiceGender and VoiceAge check out those links below

            speech.Volume = 100;  // (0 - 100)
            speech.Rate = 0;
            // Configure the audio output. 
            string text = lblWord.Text;
            // Speak a string.
            speech.Speak(text);
        }
        protected void btnSpeak_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            Label lblWord = (Label)linkButton.Parent.FindControl("lblWord");
            speech.SelectVoiceByHints(VoiceGender.Female, VoiceAge.Child);
            // to change VoiceGender and VoiceAge check out those links below

            speech.Volume = 100;  // (0 - 100)
            speech.Rate = 0;
            // Configure the audio output. 
            string text = lblWord.Text;
            // Speak a string.
            speech.Speak(text);
        }
        protected void btnRhymes_OnClick(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = false;
            panelRhymes.Visible = true;
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

        protected void btnQuiz_OnClick(object sender, ImageClickEventArgs e)
        {
            string maxLevel = function.IsExist("SELECT MAX(LEVELID) FROM Questions");
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
            Panel1.Visible = false;

            if (quizData != null)
            {
                lblHigh.Text = function.IsExist("SELECT HighScore FROM HighScore");
                lblLevel.Text = quizData["level"].ToString();
                lblScore.Text = quizData["score"].ToString();
                lblQuestion.Text =
                      function.IsExist(
                          $"SELECT TOP 1 Question FROM Questions WHERE LevelId='{lblLevel.Text}' ORDER BY NEWID()");
                lnkA.Text = function.IsExist($"SELECT OptionA FROM Questions WHERE Question='{lblQuestion.Text}'");
                lnkB.Text = function.IsExist($"SELECT OptionB FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenAns.Value =
                    function.IsExist($"SELECT Answer FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenPoint.Value =
                    function.IsExist($"SELECT Point FROM Questions WHERE Question='{lblQuestion.Text}'");
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

        protected void lnkOk_OnClick(object sender, EventArgs e)
        {

            alertModalBg.Visible = false;
            lblHigh.Text = function.IsExist("SELECT HighScore FROM HighScore");
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
            if (lblHigh.Text=="0")
            {
                function.Execute("truncate table highscore");
                function.Execute("INSERT INTO HighScore(HighScore) VALUES('" + quizData["score"].ToString() + "')");
            }
            else if (Convert.ToInt32(lblHigh.Text) <= Convert.ToInt32(lblScore.Text))
            {
                function.Execute("truncate table highscore");
                function.Execute("INSERT INTO HighScore(HighScore) VALUES('" + quizData["score"].ToString() + "')");
            }
            lblQuestion.Text = function.IsExist($"SELECT TOP 1 Question FROM Questions WHERE LevelId='{lblLevel.Text}' ORDER BY NEWID()");
            lnkA.Text = function.IsExist($"SELECT OptionA FROM Questions WHERE Question='{lblQuestion.Text}'");
            lnkB.Text = function.IsExist($"SELECT OptionB FROM Questions WHERE Question='{lblQuestion.Text}'");
            hiddenAns.Value = function.IsExist($"SELECT Answer FROM Questions WHERE Question='{lblQuestion.Text}'");
            hiddenPoint.Value = function.IsExist($"SELECT Point FROM Questions WHERE Question='{lblQuestion.Text}'");
            audioQuiz.Src = "";
            string maxLevel = function.IsExist("SELECT MAX(LEVELID) FROM Questions");
            if (Convert.ToInt32(lblLevel.Text) > Convert.ToInt32(maxLevel))
            {
                Question("Congratulations! You have successfully completed all levels.", "s");
                quizData = null;
                quiz["level"] = "1";
                quiz["score"] = "0";
                quiz.Expires = DateTime.Now.AddYears(300);
                Response.Cookies.Add(quiz);
                lblHigh.Text = function.IsExist("SELECT HighScore FROM HighScore");
                lblLevel.Text = "1";
                lblScore.Text = "0";
                lblQuestion.Text = function.IsExist($"SELECT TOP 1 Question FROM Questions WHERE LevelId='{lblLevel.Text}' ORDER BY NEWID()");
                lnkA.Text = function.IsExist($"SELECT OptionA FROM Questions WHERE Question='{lblQuestion.Text}'");
                lnkB.Text = function.IsExist($"SELECT OptionB FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenAns.Value = function.IsExist($"SELECT Answer FROM Questions WHERE Question='{lblQuestion.Text}'");
                hiddenPoint.Value = function.IsExist($"SELECT Point FROM Questions WHERE Question='{lblQuestion.Text}'");
            }


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