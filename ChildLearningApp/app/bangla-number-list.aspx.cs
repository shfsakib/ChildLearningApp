using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class bangla_number_list : System.Web.UI.Page
    {
        private Function function;

        public bangla_number_list()
        {
            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                audioWord.Src = function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE LetterType=N'Bangla Number' ORDER BY Word ASC");

            }
        }
        private void LoadData()
        {
            function.LoadDataList(alphabetData, $@"SELECT DISTINCT LETTER FROM LetterInfo WHERE LetterType=N'Bangla Number' ORDER BY Letter ASC");
            lblLetter.Text = function.IsExist($@"SELECT TOP 1 Letter FROM LetterInfo WHERE LetterType=N'Bangla Number' ORDER BY LetterId ASC");
            // audioLetter.Src= function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");
            imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 LetterPicture FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");
        }
        protected void btnLetter_OnClick(object sender, EventArgs e)
        {
            audioLetter.Src = audioLetter.Src = "";
            LinkButton linkButton = (LinkButton)sender;
            HiddenField letter = (HiddenField)linkButton.Parent.FindControl("HiddenField2");
            lblLetter.Text = function.IsExist($@"SELECT TOP 1 Letter FROM LetterInfo WHERE LetterType=N'Bangla Number' AND Letter=N'{letter.Value}' ORDER BY LetterId ASC");
            audioWord.Src = function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY Word ASC");
            // audioLetter.Src= function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");
            imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 LetterPicture FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");

        }

        protected void lnkMic_OnClick(object sender, EventArgs e)
        {
            audioWord.Src = "";
            audioLetter.Src = function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}'");
        }
    }
}