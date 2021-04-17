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
    public partial class add_admin : System.Web.UI.Page
    {
        private Function func;
        private SqlConnection con;
        private SqlCommand cmd;

        public add_admin()
        {
            func = Function.GetInstance();
            con = new SqlConnection(func.Connection);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                func.CheckCookies();
            }
        }

        protected void createButton_OnClick(object sender, EventArgs e)
        {
            bool ans = Insert();
            if (ans)
            {
                func.ShowAlert(this, "Admin created successfully");
                Refresh();
            }
            else
            {
                func.ShowAlert(this, "Failed to create admin");
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
                cmd = new SqlCommand("INSERT INTO Admin(Name,Email,MobileNo,Gender,Dob,ProfilePicture,Password,Type,Status,InTime) VALUES(@Name,@Email,@MobileNo,@Gender,@Dob,@ProfilePicture,@Password,@Type,@Status,@InTime)", con);
                cmd.Parameters.AddWithValue("@Name", nameTextBox.Value);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Value);
                cmd.Parameters.AddWithValue("@MobileNo", mobileNoTextBox.Value);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.Text);
                cmd.Parameters.AddWithValue("@Dob", func.DateConvert(txtDob.Text));
                if (profilePicFileUpload.HasFile)
                {
                    string imagePath = Server.MapPath("/Image/") + profilePicFileUpload.FileName;
                    profilePicFileUpload.PostedFile.SaveAs(imagePath);
                    string pic = "/Image/" + profilePicFileUpload.FileName;
                    cmd.Parameters.AddWithValue("@ProfilePicture", pic);

                }
                else
                {
                    cmd.Parameters.AddWithValue("@ProfilePicture", "");

                }
                cmd.Parameters.AddWithValue("@Password", txtNewPass.Value);
                cmd.Parameters.AddWithValue("@Type", typeDropDownList.Text);
                cmd.Parameters.AddWithValue("@Status", "A");
                cmd.Parameters.AddWithValue("@InTime", func.Date());

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
        private void Refresh()
        {
            nameTextBox.Value =
                txtEmail.Value =
                    mobileNoTextBox.Value =
                         txtDob.Text = txtNewPass.Value = txtConfirmPass.Value = "";
            typeDropDownList.SelectedIndex = ddlGender.SelectedIndex = -1;
        }
    }
}