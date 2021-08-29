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

        Random random = new Random();
        HttpCookie soundData = HttpContext.Current.Request.Cookies["Sound"];
        
        public home()
        {

            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                audioGrid.Src = "";

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
            }
        }

        protected void btnAlpha_OnClick(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = false;
            panelWord.Visible = true;
            function.LoadGrid(gridAlpha, "SELECT * FROM ALPHABETINFO ORDER BY ALPHABET ASC");
            audioBg.Src = "";

        }
        protected void lnkHome_OnClick(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            panelWord.Visible = panelNumber.Visible = false;
            audioGrid.Src = "";
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
            function.LoadGrid(gridNum, "SELECT * FROM Numeric ORDER BY Number ASC");
            audioBg.Src = "";


        }
        protected void btnSpeakWord_OnClick(object sender, EventArgs e)
        {

            LinkButton linkButton = (LinkButton)sender;
            HiddenField audio = (HiddenField)linkButton.Parent.FindControl("audioHidden");

            // to change VoiceGender and VoiceAge check out those links below
            audioGrid.Src = "";
            audioGrid.Src = audio.Value;

        }
        protected void btnSpeak_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            HiddenField audio = (HiddenField)linkButton.Parent.FindControl("audioHidden");
            audioGrid.Src = "";
            audioGrid.Src = audio.Value;

            //speech.SelectVoiceByHints(VoiceGender.Female, VoiceAge.Child);
            //// to change VoiceGender and VoiceAge check out those links below

            //speech.Volume = 100;  // (0 - 100)
            //speech.Rate = 0;
            //// Configure the audio output. 
            //string text = lblNum.Text;
            //// Speak a string.
            //speech.Speak(text);
        }
        protected void btnRhymes_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/app/rhymes.aspx");
        }

        protected void btnQuiz_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/quizes.aspx");
            
        } 
       
    }
}