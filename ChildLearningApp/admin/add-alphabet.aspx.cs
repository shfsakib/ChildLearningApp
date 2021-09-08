using System;
using System.Speech.Synthesis;
using ChildLearningApp.DAL; 

namespace ChildLearningApp.admin
{
    public partial class add_alphabet : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;
        private Function function; 
        Random random = new Random();
        public add_alphabet()
        {
            speech = new SpeechSynthesizer();
            function = Function.GetInstance(); 
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                function.CheckCookies();

            }
        }

        //private bool IsLetter()
        //{
        //    bool ans = false;
        //    string x = function.IsExist($"SELECT Letter FROM LetterInfo WHERE Letter=N'{txtalpha.Text}'");
        //    if (x != "")
        //    {
        //        ans = true;
        //    }
        //    return ans;
        //}
        private bool IsWord()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Word FROM LetterInfo WHERE Word=N'{txtWord.Text}'");
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
            //else if (IsLetter())
            //{
            //    function.ShowAlert(this, "Alphabet already exist");

            //}
            else if (IsWord())
            {
                function.ShowAlert(this, "Word already exist");
            }
            else
            {
                string letterAudio = "";
                string wordAudio = "";
                string letterPic = "";
                string wordPic = "";
                //letter audio file code
                if (fileAudio.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Audio/") + val + fileAudio.FileName;
                    fileAudio.PostedFile.SaveAs(imagePath);
                    letterAudio = "/Audio/" + val + fileAudio.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Letter Audio is required");
                    return;
                }
                //letter image code

                if (filePic.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + filePic.FileName;
                    filePic.PostedFile.SaveAs(imagePath);
                    letterPic = "/Image/" + val + filePic.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Letter Picture is required");
                    return;
                }
                //word audio
                if (fileWordAudio.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Audio/") + val + fileWordAudio.FileName;
                    fileWordAudio.PostedFile.SaveAs(imagePath);
                    wordAudio = "/Audio/" + val + fileWordAudio.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Word Audio is required");
                    return;
                }
                //word image
                if (fileWord.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + fileWord.FileName;
                    fileWord.PostedFile.SaveAs(imagePath);
                    wordPic = "/Image/" + val + fileWord.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Letter Picture is required");
                    return;
                }
                string date = function.Date();
                bool ans = function.Execute($@"INSERT INTO LetterInfo(Letter,LetterAudio,LetterPicture,Word,WordAudio,WordPicture,InTime,LetterType) VALUES('{txtalpha.Text}','{letterAudio}','{letterPic}','{txtWord.Text}','{wordAudio}','{wordPic}','{date}','Alphabet')");
                if (ans)
                {
                   function.AlertWithRedirect(this,"Alphabet added successfully","/admin/add-alphabet.aspx");
                }
                else
                {
                    function.ShowAlert(this, "Alphabet added failed");
                }
            }

        }
    }
}