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
    public partial class alphabet_list : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;
        private Function function;
        private AlphabetModel alphabetModel;
        private AlphabetGateway alphabetGateway;
        Random random = new Random();
        public alphabet_list()
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
                Load();
            }
        }

        private void Load()
        {
            function.LoadGrid(gridAlpha, "SELECT * FROM ALPHABETINFO ORDER BY ALPHABET ASC");
        }
        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            HiddenField id = (HiddenField)linkButton.Parent.FindControl("HiddenField1");
            bool ans = function.Execute($"DELETE FROM AlphabetInfo WHERE AlphaId='{id.Value}'");
            if (ans)
            {
                Load();
            }
            else
            {
                function.ShowAlert(this,"Failed to remove alphabet");
            }
        }
    }
}