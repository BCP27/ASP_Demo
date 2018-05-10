using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ReportDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getReport();
            }
        }

        private void getReport()
        {
            gvReport.DataSource = Session.Contents["ReportTable"];
            gvReport.DataBind(); 
        }
    }
}