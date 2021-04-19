using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp
{
    public partial class login : System.Web.UI.Page
    {
        private Function func;


        public login()
        {
            func = Function.GetInstance();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
                if (cookies != null)
                {
                    Response.Redirect("/admin/add-alphabet.aspx");
                }
                else
                {
                    txtEmail.Focus();
                }
            }
        }



        protected void btnLogin_OnServerClick(object sender, EventArgs e)
        {
            if (txtEmail.Value == "")
                ScriptManager.RegisterStartupScript(this, Page.GetType(), "script", "alert('Email is required')", true);
            else if (txtPassword.Value == "")
                ScriptManager.RegisterStartupScript(this, Page.GetType(), "script", "alert('Password is required')", true);
            else
            {
                string password1 =
                        func.IsExist(
                            $"SELECT Password FROM Admin WHERE Email='{txtEmail.Value}' AND Password='{txtPassword.Value}' AND Status='A' COLLATE Latin1_General_CS_AI");
                if (password1 == txtPassword.Value)
                {
                    HttpCookie cookie = new HttpCookie("KidsLearn");
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie);
                    cookie["Name"] = func.IsExist($"SELECT Name FROM Admin WHERE Email='{txtEmail.Value}'");
                    cookie["Type"] = func.IsExist($"SELECT Type FROM Admin WHERE Email='{txtEmail.Value}'");
                    cookie["UserId"] = func.IsExist($"SELECT Id FROM Admin WHERE Email='{txtEmail.Value}'");
                    cookie["Picture"] =
                        func.IsExist($"SELECT ProfilePicture FROM Admin WHERE Email='{txtEmail.Value}'");
                    cookie["Mobile"] = func.IsExist($"SELECT MobileNo FROM Admin WHERE Email='{txtEmail.Value}'");
                    cookie["Email"] = func.IsExist($"SELECT Email FROM Admin WHERE Email='{txtEmail.Value}'");
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);

                    Response.Redirect("/admin/add-alphabet.aspx");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "script", "alert('Invalid email & password')", true);
                }

            }
        }
    }


} 