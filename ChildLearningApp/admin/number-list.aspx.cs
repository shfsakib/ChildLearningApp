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
    public partial class number_list : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;
        private Function function;
        private NumericModel numericModel;
        private NumericGateway numericGateway;
        Random random = new Random();
        public number_list()
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

                Load();
            }
        }
        private void Load()
        {
            function.LoadGrid(gridNumber, "SELECT * FROM Numeric ORDER BY Number ASC");
        }
        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            HiddenField id = (HiddenField)linkButton.Parent.FindControl("HiddenField1");
            bool ans = function.Execute($"DELETE FROM Numeric WHERE NumId='{id.Value}'");
            if (ans)
            {
                Load();
            }
            else
            {
                function.ShowAlert(this, "Failed to remove number");
            }
        }
    }
}