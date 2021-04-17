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
    public partial class add_level : System.Web.UI.Page
    {
        private Function func;
        private SqlConnection con;
        private SqlCommand cmd;

        public add_level()
        {
            func = Function.GetInstance();
            con = new SqlConnection(func.Connection);
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
            func.LoadGrid(gridLevel, "SELECT * FROM LevelInfo ORDER BY LevelName ASC");
        }
        private bool IsLevel()
        {
            bool ans = false;
            string x = func.IsExist($"SELECT LevelName FROM LevelInfo WHERE LevelName='{txtLevel.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtLevel.Text == "")
            {
                func.ShowAlert(this, "Level name is required");
            }else if (IsLevel())
            {
                func.ShowAlert(this, "Level name already exist");
            }
            else
            {
                bool ans = Insert();
                if (ans)
                {
                    func.ShowAlert(this, "Level added successfully");
                    txtLevel.Text = "";
                    Load();
                }
                else
                {
                    func.ShowAlert(this, "Level add failed");

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
                cmd = new SqlCommand("INSERT INTO LevelInfo(LevelName,Intime) VALUES(@LevelName,@Intime)", con);
                cmd.Parameters.AddWithValue("@LevelName", txtLevel.Text);
                cmd.Parameters.AddWithValue("@Intime", func.Date());

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

        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton) sender;
            HiddenField levelId = (HiddenField) linkButton.Parent.FindControl("HiddenField1");
            bool ans = Delete(levelId.Value);
            if (ans)
            {
                Load();
            }
        }
        internal bool Delete(string id)
        {
            bool result = false;
            SqlTransaction transaction = null;
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                transaction = con.BeginTransaction();
                cmd = new SqlCommand("DELETE FROM LevelInfo WHERE LevelId=@LevelId", con);
                cmd.Parameters.AddWithValue("@LevelId", id);

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