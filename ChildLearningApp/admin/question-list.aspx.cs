using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class question_list : System.Web.UI.Page
    {
        private Function function;
        private SqlConnection con;
        private SqlCommand cmd;

        public question_list()
        {
            function = Function.GetInstance();
            con = new SqlConnection(function.Connection);
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
            function.LoadGrid(gridQuestion, @"SELECT        Questions.QuestionId, Questions.LevelId, Questions.Question, Questions.OptionA, Questions.OptionB, Questions.Answer, Questions.Point, Questions.Intime, LevelInfo.LevelName
FROM            Questions INNER JOIN
                         LevelInfo ON Questions.LevelId = LevelInfo.LevelId ORDER BY Questions.LevelId ASC");
        }
        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton) sender;
            HiddenField id = (HiddenField) linkButton.Parent.FindControl("HiddenField1");
            bool ans = function.Execute($"DELETE FROM Questions WHERE QuestionId='{id.Value}'");
            if (ans)
            {
                Load();
            }
            else
            {
                function.ShowAlert(this,"Failed to remove");
            }
        }


        protected void gridQuestion_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridQuestion.PageIndex = e.NewPageIndex;
            Load();
        }
    }
}