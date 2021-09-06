using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class bangla_months : System.Web.UI.Page
    {
        private Function function;

        public bangla_months()
        {
            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load();
                audioLearn.Src = function.IsExist($@"SELECT TOP 1 Audio FROM LearnInfo WHERE TYPE=N'Bangla Month' ORDER BY LEarnId ASC");
            }
        }
        private void Load()
        {
            lblColorName.Text =
                function.IsExist($@"SELECT TOP 1 Answer FROM LearnInfo WHERE TYPE=N'Bangla Month' ORDER BY LEarnId ASC");
            imgColor.ImageUrl = function.IsExist($@"SELECT Picture FROM LearnInfo WHERE TYPE=N'Bangla Month' AND Answer=N'{lblColorName.Text}'");
            function.LoadDataList(colorData, $@"SELECT LearnId,Picture FROM LearnInfo WHERE TYPE=N'Bangla Month' ORDER BY LEARNID ASC");
        }
        protected void lnkMic_OnClick(object sender, EventArgs e)
        {
           audioLearn.Src = function.IsExist($@"SELECT Audio FROM LearnInfo WHERE TYPE=N'Bangla Month' AND Answer=N'{lblColorName.Text}'");
        }

        protected void ImageButton1_OnClick(object sender, ImageClickEventArgs e)
        {
            audioLearn.Src = "";
            ImageButton image = (ImageButton)sender;
            image.Focus();
            HiddenField learnId = (HiddenField)image.Parent.FindControl("HiddenField1");
            audioLearn.Src = function.IsExist($@"SELECT Audio FROM LearnInfo WHERE TYPE=N'Bangla Month' AND LearnId=N'{learnId.Value}'");
            lblColorName.Text = function.IsExist($@"SELECT Answer FROM LearnInfo WHERE TYPE=N'Bangla Month' AND LearnId=N'{learnId.Value}'");
            imgColor.ImageUrl = function.IsExist($@"SELECT Picture FROM LearnInfo WHERE TYPE=N'Bangla Month' AND LearnId=N'{learnId.Value}'");

        }
    }
}