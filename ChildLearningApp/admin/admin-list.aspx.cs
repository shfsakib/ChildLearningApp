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
    public partial class admin_list : System.Web.UI.Page
    {
        private Function func;
        private SqlConnection con;
        private SqlCommand cmd;

        public admin_list()
        {
            func = Function.GetInstance();
            con = new SqlConnection(func.Connection);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                func.CheckCookies();

                Load();
            }
        }
        private void Load()
        {
            func.LoadGrid(gridAdmin, @"SELECT * FROM Admin ORDER BY Id DESC");
        }
        protected void lnkRemove_OnClick(object sender, EventArgs e)
        {
            LinkButton lnkInactive = (LinkButton)sender;
            HiddenField hiddenField = (HiddenField)lnkInactive.Parent.FindControl("HiddenField1");
            bool ans = Delete(hiddenField.Value);
            if (ans)
            {
                func.ShowAlert(this, "Removed successfully");
                Load();
            }
            else
                func.ShowAlert(this, "Failed to remove");
        }

        protected void gridAdmin_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridAdmin.PageIndex = e.NewPageIndex;
            Load();
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
                cmd = new SqlCommand("DELETE FROM Admin WHERE Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", id);

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