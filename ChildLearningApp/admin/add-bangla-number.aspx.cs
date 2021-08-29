using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class add_bangla_number : System.Web.UI.Page
    { 
        private Function function; 
        Random random = new Random();
        public add_bangla_number()
        { 
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
                function.ShowAlert(this, "Bangla Number is required");
            }
            else if (txtWord.Text == "")
            {
                function.ShowAlert(this, "Spelling is required");
            }
            else if (IsLetter())
            {
                function.ShowAlert(this, "Bangla Number already exist");

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
                    function.ShowAlert(this, "Bangla Number Audio is required");
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
                    function.ShowAlert(this, "Bangla Number Picture is required");
                    return;
                }

                string date = function.Date();
                bool ans = function.Execute($@"INSERT INTO LetterInfo(Letter,LetterAudio,LetterPicture,Word,WordAudio,WordPicture,InTime,LetterType) VALUES(N'{txtalpha.Text}','{letterAudio}','{letterPic}',N'{txtWord.Text}','{wordAudio}','{wordPic}','{date}','Bangla Number')");
                if (ans)
                {
                    function.AlertWithRedirect(this, "Bangla Number added successfully", "/admin/add-bangla-number.aspx");
                }
                else
                {
                    function.ShowAlert(this, "Bangla Number added failed");
                }
            }
        }
    }
}