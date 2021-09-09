using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.app
{
    public partial class bangla_vowel : System.Web.UI.Page
    {
        private Function function;

        public bangla_vowel()
        {
            function = Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                audioWord.Src = function.IsExist($@"SELECT TOP 1 WordAudio FROM LetterInfo WHERE LetterType=N'Bangla Vowel' ORDER BY Word ASC");

            }
        }
        private void LoadData()
        {
            function.LoadDataList(alphabetData, $@"SELECT DISTINCT LETTER FROM LetterInfo WHERE LetterType=N'Bangla Vowel' ORDER BY Letter ASC");
            imgWord.ImageUrl = function.IsExist($@"SELECT TOP 1 WordPicture FROM LetterInfo WHERE LetterType=N'Bangla Vowel' ORDER BY Word ASC");
            lblLetter.Text = function.IsExist($@"SELECT TOP 1 Letter FROM LetterInfo WHERE LetterType=N'Bangla Vowel' ORDER BY LetterId ASC");
            function.LoadDataList(wordData, $@"SELECT Word,WordPicture FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY Word ASC");
            // audioLetter.Src= function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");
            imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 LetterPicture FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");
        }
        protected void btnLetter_OnClick(object sender, EventArgs e)
        {
            audioLetter.Src = audioLetter.Src = "";
            LinkButton linkButton = (LinkButton)sender;
            HiddenField letter = (HiddenField)linkButton.Parent.FindControl("HiddenField2");
            imgWord.ImageUrl = function.IsExist($@"SELECT TOP 1 WordPicture FROM LetterInfo WHERE LetterType=N'Bangla Vowel' AND Letter=N'{letter.Value}' ORDER BY Word ASC");
            lblLetter.Text = function.IsExist($@"SELECT TOP 1 Letter FROM LetterInfo WHERE LetterType=N'Bangla Vowel' AND Letter=N'{letter.Value}' ORDER BY LetterId ASC");
            function.LoadDataList(wordData, $@"SELECT Word,WordPicture FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY Word ASC");
            audioWord.Src = function.IsExist($@"SELECT TOP 1 WordAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY Word ASC");
            // audioLetter.Src= function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");
            imgLetter.ImageUrl = function.IsExist($@"SELECT TOP 1 LetterPicture FROM LetterInfo WHERE Letter=N'{lblLetter.Text}' ORDER BY LetterId ASC");

        }

        protected void ImageButton1_OnClick(object sender, ImageClickEventArgs e)
        {
            audioLetter.Src = audioLetter.Src = "";
            ImageButton image = (ImageButton)sender;
            image.Focus();
            HiddenField word = (HiddenField)image.Parent.FindControl("HiddenField1");
            imgWord.ImageUrl = function.IsExist($@"SELECT TOP 1 WordPicture FROM LetterInfo WHERE LetterType=N'Bangla Vowel' AND Word=N'{word.Value}' ORDER BY Word ASC");
            audioWord.Src = function.IsExist($@"SELECT TOP 1 WordAudio FROM LetterInfo WHERE LetterType=N'Bangla Vowel' AND Word=N'{word.Value}' ORDER BY Word ASC");

        }

        protected void lnkMic_Click(object sender, EventArgs e)
        {
            audioWord.Src = "";
            audioLetter.Src = function.IsExist($@"SELECT TOP 1 LetterAudio FROM LetterInfo WHERE Letter=N'{lblLetter.Text}'");

        }
    }
}