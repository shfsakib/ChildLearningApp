﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class learn_color : System.Web.UI.Page
    {
        private Function function;

        public learn_color()
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
            audioLearn.Src = "";
            lblColorName.Text =
                function.IsExist($@"SELECT TOP 1 Answer FROM LearnInfo WHERE TYPE='Color' ORDER BY NEWID() ");
            imgColor.ImageUrl = function.IsExist($@"SELECT Picture FROM LearnInfo WHERE TYPE='Color' AND Answer='{lblColorName.Text}'");

        }

        protected void lnkMic_OnClick(object sender, EventArgs e)
        {
            audioLearn.Src = function.IsExist($@"SELECT Audio FROM LearnInfo WHERE TYPE='Color' AND Answer='{lblColorName.Text}'");
        }

        protected void lnkNext_OnClick(object sender, EventArgs e)
        {
            audioLearn.Src = "";
            lblColorName.Text =
                 function.IsExist($@"SELECT TOP 1 Answer FROM LearnInfo WHERE TYPE='Color' ORDER BY NEWID() ");
            imgColor.ImageUrl = function.IsExist($@"SELECT Picture FROM LearnInfo WHERE TYPE='Color' AND Answer='{lblColorName.Text}'");

        }
    }
}