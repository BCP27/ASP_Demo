using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MainSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnServiceEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("./ServiceEvent.aspx");
        }

        protected void btnTechnicians_Click(object sender, EventArgs e)
        {
            Response.Redirect("./TechnicianInformationForm.aspx");
        }

        protected void btnProblem_Click(object sender, EventArgs e)
        {
            Response.Redirect("./OpenProblems.aspx");
        }

        protected void btnReports_Click(object sender, EventArgs e)
        {
            Response.Redirect("./ReportSelection.aspx");
        }
    }
}