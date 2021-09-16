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
        HttpCookie lang = new HttpCookie("lang");

        Random random = new Random();
        HttpCookie soundData = HttpContext.Current.Request.Cookies["Sound"];
        HttpCookie langData = HttpContext.Current.Request.Cookies["lang"];

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
                if (langData == null)
                {
                    lang["type"] = "Eng";
                    lang.Expires = DateTime.Now.AddYears(300);
                    Response.Cookies.Add(lang);
                }
            }
        }


        protected void lnkHome_OnClick(object sender, EventArgs e)
        {
            Panel1.Visible = true;
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
        protected void btnAlpha_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/alphabet-list.aspx");

        }
        protected void btnNumeric_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/number-list.aspx");
        }


        protected void btnLang_OnClick(object sender, EventArgs e)
        {
            lang["type"] = "Bn";
            lang.Expires = DateTime.Now.AddYears(300);
            Response.Cookies.Add(lang);
            Response.Redirect(Request.RawUrl);
        }

        protected void btnBn_OnClick(object sender, EventArgs e)
        {
            lang["type"] = "Eng";
            lang.Expires = DateTime.Now.AddYears(300);
            Response.Cookies.Add(lang);
            Response.Redirect(Request.RawUrl);
        }

        protected void imgAddtion_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/addition.aspx");
        }

        protected void imgSubstration_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/substraction.aspx");
        }

        protected void imgColor_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/learn-color.aspx");
        }

        protected void imgAnimal_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/learn-animal.aspx");
        }

        protected void imgMonth_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/learn-month.aspx");
        }

        protected void imgWeek_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/learn-week.aspx");
        }

        protected void imgShape_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/learn-shape.aspx");
        }

        protected void imgFindAnimal_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/find-animal.aspx");
        }

        protected void imgFindNum_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/find-number.aspx");
        }

        protected void DrawBoard_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/drawing-board.aspx");
        }

        protected void imgAlphaMatcher_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/alphabet-matcher.aspx");
        }

        protected void imgNumberMatcher_OnClick(object sender, ImageClickEventArgs e)
        {
            audioBg.Src = "";
            Response.Redirect("/app/number-matcher.aspx");
        }
    }
}