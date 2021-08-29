using System;
using System.Collections.Generic;
using System.Linq;
using System.Speech.Synthesis;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;
using ChildLearningApp.DAL.Gateway; 

namespace ChildLearningApp.admin
{
    public partial class add_number : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;
        private Function function; 
        private NumericGateway numericGateway;
        Random random = new Random();
        public add_number()
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
        private bool IsLetter()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Letter FROM LetterInfo WHERE Letter=N'{txtalpha.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
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
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtalpha.Text == "")
            {
                function.ShowAlert(this, "Number is required");
            }
            else if (txtWord.Text == "")
            {
                function.ShowAlert(this, "Spelling is required");
            }
            else if (IsLetter())
            {
                function.ShowAlert(this, "Number already exist");

            }
            else if (IsWord())
            {
                function.ShowAlert(this, "Spelling already exist");
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
                    function.ShowAlert(this, "Number Audio is required");
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
                    function.ShowAlert(this, "Number Picture is required");
                    return;
                }
                 
                string date = function.Date();
                bool ans = function.Execute($@"INSERT INTO LetterInfo(Letter,LetterAudio,LetterPicture,Word,WordAudio,WordPicture,InTime,LetterType) VALUES('{txtalpha.Text}','{letterAudio}','{letterPic}','{txtWord.Text}','{wordAudio}','{wordPic}','{date}','Number')");
                if (ans)
                {
                    function.AlertWithRedirect(this, "Number added successfully", "/admin/add-number.aspx");
                }
                else
                {
                    function.ShowAlert(this, "Number added failed");
                }
            }
        }
    }
}