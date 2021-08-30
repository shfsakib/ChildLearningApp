using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class calculation_info : System.Web.UI.Page
    {
        private Function function;
        Random random = new Random();
        public calculation_info()
        {
            function = Function.GetInstance();
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
            function.LoadGrid(gridCal,$"SELECT * FROM Calculation WHERE Type='{ddlSearch.SelectedValue}' ORDER BY Id DESC");
        }
        private bool IsCalculation()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Question FROM Calculation WHERE Question=N'{txtQuestion.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtQuestion.Text == "")
            {
                function.ShowAlert(this, "Question is required");
            }
            else if (IsCalculation())
            {
                function.ShowAlert(this, "Question already exist");
            }
            else if (txtOptA.Text == "")
            {
                function.ShowAlert(this, "Option A is required");
            }
            else if (txtOptB.Text == "")
            {
                function.ShowAlert(this, "Option B is required");
            }
            else if (txtAns.Text == "")
            {
                function.ShowAlert(this, "Answer is required");
            }
            else if (ddlType.SelectedIndex <= 0)
            {
                function.ShowAlert(this, "Language type is required");
            }
            else if (ddlCalType.SelectedIndex <= 0)
            {
                function.ShowAlert(this, "Calculation type is required");
            }
            else
            {
                string pic1 = "";
                string pic2 = "";
                if (filePic.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + filePic.FileName;
                    filePic.PostedFile.SaveAs(imagePath);
                    pic1 = "/Image/" + val + filePic.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Picture 1 is required");
                    return;
                }
                //pic2
                if (filePic2.HasFile)
                {
                    string val = random.Next(1111, 999999).ToString();
                    string imagePath = Server.MapPath("/Image/") + val + filePic2.FileName;
                    filePic2.PostedFile.SaveAs(imagePath);
                    pic2 = "/Image/" + val + filePic2.FileName;
                }
                else
                {
                    function.ShowAlert(this, "Picture 2 is required");
                    return;
                }
                bool ans = function.Execute($@"INSERT INTO Calculation(Question,Picture1,Picture2,Option1,Option2,Type,CalType,Answer,Intime) VALUES(N'{txtQuestion.Text}',N'{pic1}',N'{pic2}',N'{txtOptA.Text}',N'{txtOptB.Text}',N'{ddlType.SelectedValue}',N'{ddlCalType.SelectedValue}','{txtAns.Text}','{function.Date()}')");
                if (ans)
                {
                    function.AlertWithRedirect(this, "Calculation added successfully", "/admin/calculation-info.aspx");
                }
                else
                {
                    function.ShowAlert(this, "Failed to add");
                }
            }
        }

        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            HiddenField id = (HiddenField)linkButton.Parent.FindControl("HiddenField1");
            bool ans = function.Execute($"DELETE FROM Calculation WHERE Id='{id.Value}'");
            if (ans)
            {
                Load();
            }
            else
            {
                function.ShowAlert(this, "Failed to remove calculation");
            }
        }

        protected void ddlSearch_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            Load();
        }
    }
}