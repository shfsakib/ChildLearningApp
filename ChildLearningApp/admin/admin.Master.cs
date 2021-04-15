using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChildLearningApp.DAL;

namespace ChildLearningApp.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        private Function function;

        public admin()
        {
            function=Function.GetInstance();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}