using System;
using System.Collections.Generic;
using System.Linq;
using System.Speech.Synthesis;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;
using ChildLearningApp.DAL.Gateway;
using ChildLearningApp.DAL.Model;

namespace ChildLearningApp.admin
{
    public partial class add_number : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;
        private Function function;
        private NumericModel numericModel;
        private NumericGateway numericGateway;
        Random random = new Random();
        public add_number()
        {
            speech = new SpeechSynthesizer();
            function = Function.GetInstance();
            numericModel = NumericModel.GetInstance();
            numericGateway = NumericGateway.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                function.CheckCookies();

            }
        }
        private bool IsNumber()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Number FROM Numeric WHERE Number='{txtalpha.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        private bool IsWord()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Word FROM Numeric WHERE Word='{txtWord.Text}'");
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
            else if (IsNumber())
            {
                function.ShowAlert(this, "Number already exist");

            }
            else if (IsWord())
            {
                function.ShowAlert(this, "Spelling already exist");
            }
            else
            {
                numericModel.Number = txtalpha.Text;
                numericModel.Word = txtWord.Text;
                numericModel.InTime = function.Date();
                if (fileAudio.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Audio/") + val + fileAudio.FileName;
                    fileAudio.PostedFile.SaveAs(imagePath);
                    numericModel.Audio = "/Audio/" + val + fileAudio.FileName;
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
                    numericModel.Picture = "/Image/" + val + filePic.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Picture is required");

                }
                bool ans = numericGateway.Insert(numericModel);
                if (ans)
                {
                    txtalpha.Text = txtWord.Text = "";
                    function.ShowAlert(this, "Number added successfully");
                }
                else
                {
                    function.ShowAlert(this, "Number added failed");
                }
            }
        }
    }
}