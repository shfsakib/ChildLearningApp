using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Speech.Synthesis;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class add_rhymes : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;
        private Function function;
        Random random = new Random();
        private SqlConnection con;
        private SqlCommand cmd;
        public add_rhymes()
        {
            speech = new SpeechSynthesizer();
            function = Function.GetInstance();
            con = new SqlConnection(function.Connection);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        private bool IsRhymes()
        {
            bool ans = false;
            string x = function.IsExist($"SELECT RhymeName FROM Rhymes WHERE RhymeName='{txtName.Text}'");
            if (x != "")
            {
                ans = true;
            }
            return ans;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            if (txtName.Text == "")
            {
                function.ShowAlert(this, "Name is required");
            }
            else if (txtLink.Text == "")
            {
                function.ShowAlert(this, "Link is required");
            }
            else if (IsRhymes())
            {
                function.ShowAlert(this, "Rhymes already exist");
            }
            else
            {
                string link = txtLink.Text;
                if (link.Contains("https://youtu.be/"))
                {
                    int length = link.Length;
                    link = link.Substring(17,length-17);
                }
                link = "https://www.youtube.com/embed/" + link;
                bool ans = Insert(link);
                if (ans)
                {
                    txtName.Text = txtLink.Text = "";
                    function.ShowAlert(this, "Rhymes added successfully");
                }
            }
        }
        internal bool Insert(string link)
        {
            bool result = false;
            SqlTransaction transaction = null;
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                transaction = con.BeginTransaction();
                cmd = new SqlCommand("INSERT INTO Rhymes(RhymeName,Link,Intime) VALUES(@RhymeName,@Link,@Intime)", con);
                cmd.Parameters.AddWithValue("@RhymeName", txtName.Text);
                cmd.Parameters.AddWithValue("@Link", link);
                cmd.Parameters.AddWithValue("@Intime", function.Date());

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