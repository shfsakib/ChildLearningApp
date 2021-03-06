using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ChildLearningApp.DAL
{
    public class Function
    {
        IFormatProvider dateformat = new System.Globalization.CultureInfo("fr-FR", true);
        private static Function _instance;
        private SqlConnection con;
        public static Function GetInstance()
        {
            if (_instance == null)
            {
                _instance = new Function();
            }
            return _instance;
        }

        public Function()
        {
            if (con == null)
            {
                con = new SqlConnection(Connection);
            }
        }

        public string Connection = new SqlConnectionStringBuilder {
            DataSource = "server3.hostever.com,14333",
            InitialCatalog = "SBL_INVENTORY",
            UserID = "riazripon",
            Password = "riaz.tarin@123%rrStock",
            MultipleActiveResultSets = true,
            ConnectTimeout = 0,
            Pooling = true,
            MinPoolSize = 0,
            MaxPoolSize = 4096 }.ToString();
        public string Connection1 = @"Data Source=.\local;Initial Catalog=KidsLearningDb;Integrated Security=True";
        public void BindDropDown(DropDownList ddl, string root, string query)
        {
            con = new SqlConnection(Connection);
            DataSet dataSet = new DataSet();
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dataSet);
                ddl.DataSource = dataSet;
                ddl.DataTextField = "Name";
                ddl.DataValueField = "ID";
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("--" + root.ToUpper() + "--"));
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            catch (Exception ex)
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
        }
        public List<string> ListData(string sql)        {            List<string> list = new List<string>();
            con = new SqlConnection(Connection);            try            {
                if (con.State != ConnectionState.Open) con.Open();                SqlCommand cmd = new SqlCommand(sql, con);                SqlDataReader rd = cmd.ExecuteReader(); list.Clear();
                //List.Add("Select");
                while (rd.Read())                {                    list.Add(rd[0].ToString());                }                rd.Close();            }            catch (Exception ex)            {
                //ignore
            }
            return list;
        }
        public void BindCheckBoxList(CheckBoxList ob, string root, string query)
        {
            con = new SqlConnection(Connection);
            DataSet dataSet = new DataSet();
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dataSet);
                ob.DataSource = dataSet;
                ob.DataTextField = "Name";
                ob.DataValueField = "ID";
                ob.DataBind();
                ob.Items.Insert(0, new ListItem(root.ToUpper()));
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            catch (Exception ex)
            {
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
        }
        public bool Execute(string str)
        {
            bool result = false;
            SqlConnection Conn = new SqlConnection(Connection);
            try
            {

                if (Conn.State != ConnectionState.Open) Conn.Open();
                SqlCommand cmd = new SqlCommand(str, Conn);
                int count = cmd.ExecuteNonQuery();
                if (count > 0)
                    result = true;
                else
                    result = false;
                if (Conn.State != ConnectionState.Closed) Conn.Close();
            }
            catch (Exception ex) { if (Conn.State != ConnectionState.Closed) Conn.Close(); }
            return result;
        }
        public string IsExist(string str)
        {
            string result = "";
            try
            {
                if (con.State != ConnectionState.Open) con.Open();
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataReader DR = cmd.ExecuteReader();
                while (DR.Read())
                    result = DR[0].ToString();
                DR.Close();
                if (con.State != ConnectionState.Closed) con.Close();
            }
            catch (Exception ex)
            {
                if (con.State != ConnectionState.Closed) con.Close();
            }
            return result;
        }
        public bool ValidDate(TextBox date)
        {
            try
            {
                if (date.Text == "" || date.Text.Length != 10)
                    return true;
                else
                    DateTime.Parse(date.Text, dateformat, System.Globalization.DateTimeStyles.AssumeLocal);
            }
            catch (Exception EX)
            { return true; }

            return false;
        }
        public bool ValidDateI(HtmlInputText date)
        {
            try
            {
                if (date.Value == "" || date.Value.Length != 10)
                    return true;
                else
                    DateTime.Parse(date.Value, dateformat, System.Globalization.DateTimeStyles.AssumeLocal);
            }
            catch (Exception EX)
            { return true; }

            return false;
        }
        public string Date()
        {
            string date = DateTime.Now.ToString("dd/MM/yyyy_hh:mm:ss");
            return date;
        }
        public DateTime Timezone(DateTime datetime)
        {
            var timezoneInfo = TimeZoneInfo.FindSystemTimeZoneById("Central Asia Standard Time");
            DateTime printDate = TimeZoneInfo.ConvertTime(datetime, timezoneInfo);
            return printDate;
        }
        public void FocusTools(Page page, string toolName)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "script", "$('#ContentPlaceHolder1_" + toolName + "').focus()", true);
        }
        public void FocusTool(Page page, string toolName)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "script", "$('#'" + toolName + "'').focus()", true);
        }
        public void Alert(Page page, string msg, string type, bool confirm)
        {
            int timer = 0;
            if (type == "s")
            {
                type = "success";
            }
            else if (type == "e")
            {
                type = "error";
            }
            else if (type == "w")
            {
                type = "warning";
            }
            if (confirm)
            {
                timer = 6000;
            }
            else
            {
                timer = 1500;
            }
            string alert = @"Swal.fire({  position: 'center',  icon: '" + type + "',title: '" + msg + "',showConfirmButton:'" + confirm + "',timer:'" + timer + "'})";
            ScriptManager.RegisterStartupScript(page, page.GetType(), "Popup", alert, true);
        }

        public void ShowAlert(Page page, string msg)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "script", "setTimeout(function(){alert('" + msg + "')},100);", true);

        }
        public void AlertWithRedirect(Page page, string msg, string link)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "script", @"setTimeout(function(){alert('" + msg + "')},100);setTimeout(function(){location.replace('" + link + "')},800);", true);
        }
        public bool EmailValidation(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public void LoadGrid(GridView ob, string query)
        {
            DataTable table = new DataTable();
            SqlConnection con = new SqlConnection(Connection);
            try
            {
                ob.Visible = true;
                if (con.State != ConnectionState.Open) con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(table);
                ob.DataSource = table;
                ob.DataBind();
                if (con.State != ConnectionState.Closed) con.Close();
            }
            catch (Exception ex)
            {
                if (con.State != ConnectionState.Closed) con.Close();
            }
        }
        public void LoadDataList(DataList ob, string query)
        {
            DataTable table = new DataTable();
            SqlConnection con = new SqlConnection(Connection);
            try
            {
                ob.Visible = true;
                if (con.State != ConnectionState.Open) con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(table);
                ob.DataSource = table;
                ob.DataBind();
                if (con.State != ConnectionState.Closed) con.Close();
            }
            catch (Exception ex)
            {
                if (con.State != ConnectionState.Closed) con.Close();
            }
        }

        public bool MobileNoValidation(string mobileNo)
        {
            try
            {
                if (mobileNo == "" || mobileNo.Length < 11 || !mobileNo.StartsWith("0"))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return true;
            }
        }
        public bool SendEmail(string fromMail, string toMail, string subject, string body, string fromPass)
        {
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress(fromMail);
                message.To.Add(new MailAddress(toMail));
                message.Subject = subject;
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = body;
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential(fromMail, fromPass);
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public string CheckPassword(string pass)
        {
            if (pass.Length < 6 || pass.Length > 15)
            {
                return "Password must be between 6-15 character";
            }
            else if (pass.Contains(" "))
            {
                return "Remove space from your password";
            }
            else if (!pass.Any(char.IsUpper))
            {
                return "Password must have at least one capital latter";
            }
            else if (!pass.Any(char.IsLower))
            {
                return "Password must have at least one small latter";
            }
            else if (!pass.Any(char.IsDigit))
            {
                return "Password must be a combination of alphanumeric characters";
            }
            else
            {
                return "Strong password";
            }
        }
        public string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }
        public string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
        }

        public void CheckCookies()
        {
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            if (cookies == null)
            {
                HttpContext.Current.Response.Redirect("/log-in.aspx", true);
            }
        }

        public void Logout()
        {
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            cookies.Expires = DateTime.Now.AddDays(-1);
            HttpContext.Current.Response.Cookies.Add(cookies);
            HttpContext.Current.Response.Redirect("/log-in.aspx");
        }
        public static HttpCookie InsertValueToCookie()
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            if (cookie == null || cookie?.Value == "")
            {
                cookie = null;
            }
            return cookie;
        }
        public static HttpCookie GetValueFromCookie()
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies["KidsLearn"];
            if (cookie == null || cookie?.Value == "")
            {
                cookie = null;
            }
            return cookie;
        }
        public string UserIdCookie()
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            return cookies["UserId"];
        }
        public string NameCookie()
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            return cookies["Name"];
        }
        public string MobileCookie()
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            return cookies["Mobile"];
        }
        public string EmailCookie()
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            return cookies["Email"];
        }
        public string TypeCookie()
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            return cookies["Type"];
        }

        public void CheckTypeCookie(Page page, string type)
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            if (cookies["Type"] != type)
            {
                HttpContext.Current.Response.Redirect("/log-in.aspx");
            }

        }
        public void AdminType(Page page, string type1, string type2)
        {
            HttpCookie cookie = new HttpCookie("KidsLearn");
            HttpCookie cookies = HttpContext.Current.Request.Cookies["KidsLearn"];
            if (cookies["Type"] == type1)
            {
            }
            else if (cookies["Type"] == type2)
            {
            }
            else
            {
                HttpContext.Current.Response.Redirect("/log-in.aspx");
            }
        }

        public string GenerateId(string query)
        {
            string id = "";
            try
            {
                if (con.State != ConnectionState.Open) con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    id = reader[0].ToString();
                    if (id == "")
                        id = "1001";
                    else
                    {
                        id = (int.Parse(id) + 1).ToString();
                    }

                }
                reader.Close();
                if (con.State != ConnectionState.Closed) con.Close();
            }
            catch
            {
            }
            return id;
        }

        public string DateConvert(string date)
        {
            DateTime dateTime = Convert.ToDateTime(date);
            return dateTime.ToString("dd/MM/yyyy");
        }
    }
}