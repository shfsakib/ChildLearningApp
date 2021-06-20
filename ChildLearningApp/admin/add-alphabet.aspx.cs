using System;
using System.Speech.Synthesis;
using ChildLearningApp.DAL;
using ChildLearningApp.DAL.Gateway;
using ChildLearningApp.DAL.Model;

namespace ChildLearningApp.admin
{
    public partial class add_alphabet : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;
        private Function function;
        private AlphabetModel alphabetModel;
        private AlphabetGateway alphabetGateway;
        Random random = new Random();
        public add_alphabet()
        {
            speech = new SpeechSynthesizer();
            function = Function.GetInstance();
            alphabetModel = AlphabetModel.GetInstance();
            alphabetGateway = AlphabetGateway.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                function.CheckCookies();

            }
        }

        private bool IsAlpha()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Alphabet FROM AlphabetInfo WHERE Alphabet='{txtalpha.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        private bool IsWord()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Word FROM AlphabetInfo WHERE Word='{txtWord.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        //protected void lnkAdd_OnClick(object sender, EventArgs e)
        //{
        //    // Initialize a new instance of the SpeechSynthesizer.
        //    speech.SelectVoiceByHints(VoiceGender.Female, VoiceAge.Child); // to change VoiceGender and VoiceAge check out those links below

        //    speech.Volume = 100;  // (0 - 100)
        //    speech.Rate = 0;
        //    // Configure the audio output. 
        //    string text = "B for Ball";
        //    // Speak a string.
        //    speech.Speak(text);

        //}
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtalpha.Text == "")
            {
                function.ShowAlert(this, "Alphabet is required");
            }
            else if (txtWord.Text == "")
            {
                function.ShowAlert(this, "Word is required");
            }
            else if (IsAlpha())
            {
                function.ShowAlert(this, "Alphabet already exist");

            }
            else if (IsWord())
            {
                function.ShowAlert(this, "Word already exist");
            }
            else
            {
                alphabetModel.Alphabet = txtalpha.Text;
                alphabetModel.Word = txtWord.Text;
                alphabetModel.InTime = function.Date();
                if (fileAudio.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Audio/") + val + fileAudio.FileName;
                    fileAudio.PostedFile.SaveAs(imagePath);
                    alphabetModel.Audio = "/Audio/" + val + fileAudio.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Audio is required");

                }
                if (filePic.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + filePic.FileName;
                    filePic.PostedFile.SaveAs(imagePath);
                    alphabetModel.Picture = "/Image/" + val + filePic.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Picture is required");

                }
                bool ans = alphabetGateway.Insert(alphabetModel);
                if (ans)
                {
                    txtalpha.Text = txtWord.Text = "";
                    function.ShowAlert(this, "Alphabet added successfully");
                }
                else
                {
                    function.ShowAlert(this, "Alphabet added failed");
                }
            }

        }
    }
}