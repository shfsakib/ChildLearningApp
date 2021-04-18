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
    public partial class update_question : System.Web.UI.Page
    {
        private Function function;
        private SqlConnection con;
        private SqlCommand cmd;

        public update_question()
        {
            function = Function.GetInstance();
            con = new SqlConnection(function.Connection);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                function.BindDropDown(ddlLevel, "Choose", "SELECT LevelName Name,LevelId Id FROM LevelInfo ORDER BY LevelName ASC");
                Load();
            }
        }

        private void Load()
        {
            ddlLevel.SelectedValue =
                function.IsExist(
                    $"SELECT LevelId FROM QUESTIONS WHERE QuestionId='{Request.QueryString["id"].ToString()}'");
            txtQuestion.Text =
                function.IsExist(
                    $"SELECT Question FROM QUESTIONS WHERE QuestionId='{Request.QueryString["id"].ToString()}'");
            txtOptA.Text =
                function.IsExist(
                    $"SELECT OptionA FROM QUESTIONS WHERE QuestionId='{Request.QueryString["id"].ToString()}'");
            txtOptB.Text =
                function.IsExist(
                    $"SELECT OptionB FROM QUESTIONS WHERE QuestionId='{Request.QueryString["id"].ToString()}'");
            txtAns.Text =
                function.IsExist(
                    $"SELECT Answer FROM QUESTIONS WHERE QuestionId='{Request.QueryString["id"].ToString()}'");
            txtPoint.Text =
                function.IsExist(
                    $"SELECT Point FROM QUESTIONS WHERE QuestionId='{Request.QueryString["id"].ToString()}'");

        }
        protected void btnUpdate_OnClick(object sender, EventArgs e)
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
            else
            {
                bool ans = Update();
                if (ans)
                {
                    txtPoint.Text = txtAns.Text = txtOptA.Text = txtOptB.Text = txtQuestion.Text = "";
                    ddlLevel.SelectedIndex = -1;
                    ScriptManager.RegisterStartupScript(this,Page.GetType(),"script", "alert('Question updated successfully');setTimeout(function(){location.replace('/admin/question-list.aspx');},1200);",true);
                }
                else
                {
                    function.ShowAlert(this, "Failed to update question");

                }
            }
        }
        internal bool Update()
        {
            bool result = false;
            SqlTransaction transaction = null;
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                transaction = con.BeginTransaction();
                cmd = new SqlCommand("UPDATE Questions SET Question=@Question,OptionA=@OptionA,OptionB=@OptionB,Answer=@Answer,Point=@Point WHERE QuestionId=@QuestionId", con);
                cmd.Parameters.AddWithValue("@Question", txtQuestion.Text);
                cmd.Parameters.AddWithValue("@OptionA", txtOptA.Text);
                cmd.Parameters.AddWithValue("@OptionB", txtOptB.Text);
                cmd.Parameters.AddWithValue("@Answer", txtAns.Text);
                cmd.Parameters.AddWithValue("@Point", txtPoint.Text);
                cmd.Parameters.AddWithValue("@LevelId", ddlLevel.SelectedValue);
                cmd.Parameters.AddWithValue("@QuestionId", Request.QueryString["id"]);

                cmd.Transaction = transaction;
                cmd.ExecuteNonQuery();
                transaction.Commit();
                result = true;
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
            return result;
        }
    }
}