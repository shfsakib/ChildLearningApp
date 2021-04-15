using System;
using System.Collections.Generic;
using System.Linq;
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

        HttpCookie soundData = HttpContext.Current.Request.Cookies["Sound"];

        public home()
        {
            function=Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (soundData==null)
                {
                    audioBg.Src = "../MenuLink/app-file/bg-music.mp3";
                }else if (soundData["play"].ToString()=="off")
                {
                    audioBg.Src = "";
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
        }

        protected void btnMute_OnServerClick(object sender, EventArgs e)
        {
            sound["play"] = "on";
            sound.Expires = DateTime.Now.AddYears(300);
            Response.Cookies.Add(sound);
        }
    }
}