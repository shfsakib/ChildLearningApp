using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class add_question : System.Web.UI.Page
    {
        private Function function;
        private SqlConnection con;
        private SqlCommand cmd;

        public add_question()
        {
            function = Function.GetInstance();
            con = new SqlConnection(function.Connection);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                function.CheckCookies();

                function.BindDropDown(ddlLevel, "Choose", "SELECT LevelName Name,LevelId Id FROM LevelInfo ORDER BY LevelName ASC");
            }
        }
        private bool IsQuestion()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT Question FROM Questions WHERE Question=N'{txtQuestion.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (ddlLevel.Text == "--CHOOSE--")
            {
                function.ShowAlert(this, "Level is required");
            }
            else if (txtQuestion.Text == "")
            {
                function.ShowAlert(this, "Question is required");
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
            else if (txtPoint.Text == "" || txtPoint.Text == "0")
            {
                function.ShowAlert(this, "Point is required");
            }
            else if (IsQuestion())
            {
                function.ShowAlert(this, "Question already added");
            }
            else
            {
                bool ans = Insert();
                if (ans)
                {
                    txtAns.Text = txtOptA.Text = txtOptB.Text = txtQuestion.Text = "";
                    txtPoint.Text = "1";
                    ddlLevel.SelectedIndex = -1;
                    function.ShowAlert(this, "Question added successfully");
                }
                else
                {
                    function.ShowAlert(this, "Failed to add question");

                }
            }
        }
        internal bool Insert()
        {
            bool result = false;
            SqlTransaction transaction = null;
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                transaction = con.BeginTransaction();
                cmd = new SqlCommand("INSERT INTO Questions(LevelId,Question,OptionA,OptionB,Answer,Point,Intime) VALUES(@LevelId,@Question,@OptionA,@OptionB,@Answer,@Point,@Intime)", con);
                cmd.Parameters.AddWithValue("@LevelId", ddlLevel.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Question", txtQuestion.Text);
                cmd.Parameters.AddWithValue("@OptionA", txtOptA.Text);
                cmd.Parameters.AddWithValue("@OptionB", txtOptB.Text);
                cmd.Parameters.AddWithValue("@Answer", txtAns.Text);
                cmd.Parameters.AddWithValue("@Point", txtPoint.Text);
                cmd.Parameters.AddWithValue("@Intime", function.Date());

                cmd.Transaction = transaction;
                cmd.ExecuteNonQuery();
                transaction.Commit();
                result = true;
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            catch (Exception ex)
            {
                transaction.Rollback();
            }
            return result;
        }
    }
}