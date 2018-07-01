using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class ReportSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClient_Click(object sender, EventArgs e)
        {
            reportData(1);
        }

        protected void btnInstitution_Click(object sender, EventArgs e)
        {
            reportData(2);
        }

        protected void btnProduct_Click(object sender, EventArgs e)
        {
            reportData(3);
        }

        protected void btnTech_Click(object sender, EventArgs e)
        {
            reportData(4);
        }

        protected void btnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("./MainSelection.aspx");
        }

        private void reportData(int select)
        {
            DataSet dsdata;
            if (select == 1)
            {
                dsdata = clsDatabase.ProblemsByClient();
                Session.Contents["ReportTable"] = dsdata;
            }
            else if (select == 2)
            {
                dsdata = clsDatabase.ProblemsByInstitution();
                Session.Contents["ReportTable"] = dsdata;
            }
            else if (select == 3)
            {
                dsdata = clsDatabase.ProblemsByProduct();
                Session.Contents["ReportTable"] = dsdata;
            }
            else if (select == 4)
            {
                dsdata = clsDatabase.ProblemsByTechnician();
                Session.Contents["ReportTable"] = dsdata;
            }
            Response.Redirect("./ReportDisplay.aspx");
        }
    }
}