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
    public partial class update_password : System.Web.UI.Page
    {
        private Function function;
        private SqlConnection con;
        private SqlCommand cmd;
        public update_password()
        {
            function=Function.GetInstance();
            con=new SqlConnection(function.Connection);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                function.BindDropDown(ddlUser,"select","SELECT Name +' | '+Email Name,id FROM ADMIN ORDER BY Name ASC");
            }
        }

        protected void btnUpdate_OnClick(object sender, EventArgs e)
        {
            if (ddlUser.SelectedItem.ToString()=="--SELECT--")
            {
                function.ShowAlert(this,"Select an user first");
            }else if (txtnew.Text=="")
            {
                function.ShowAlert(this,"New password is required");
            }else if (txtnew.Text!=txtConfirmPass.Text)
            {
                function.ShowAlert(this,"Password mismatch");
            }
            else
            {
                bool ans = Update();
                if (ans)
                {
                    ddlUser.SelectedIndex = -1;
                    function.ShowAlert(this,"Password changed successfully");
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
                cmd = new SqlCommand("UPDATE Admin SET Password=@Password WHERE Id=@Id", con);
                cmd.Parameters.AddWithValue("@Password", txtnew.Text);
                cmd.Parameters.AddWithValue("@Id", ddlUser.SelectedValue);
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