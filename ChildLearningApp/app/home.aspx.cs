using System;
using System.Collections.Generic;
using System.Linq;
using System.Speech.Synthesis;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class home : System.Web.UI.Page
    {
        private Function function;
        HttpCookie sound = new HttpCookie("Sound");
        private SpeechSynthesizer speech;

        HttpCookie soundData = HttpContext.Current.Request.Cookies["Sound"];

        public home()
        {
            speech = new SpeechSynthesizer();
            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
                Load();
            }
        }
        private void Load()
        {
            function.LoadGrid(gridAlpha, "SELECT * FROM ALPHABETINFO ORDER BY ALPHABET ASC");
            function.LoadGrid(gridNum, "SELECT * FROM Numeric ORDER BY Number ASC");

        }
        protected void btnAlpha_OnClick(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = false;
            panelWord.Visible = true;
        }

        protected void lnkHome_OnClick(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            panelWord.Visible = false;
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
            LinkButton linkButton = (LinkButton) sender;
            Label lblWord = (Label) linkButton.Parent.FindControl("lblWord");
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
    }
}