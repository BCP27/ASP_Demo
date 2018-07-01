using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class OpenProblems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";

            if (!IsPostBack)
            {
                GetProblemData();
            }
        }

        private void GetProblemData()
        {
            DataSet dsdata;
            dsdata = clsDatabase.GetOpenProblems();
            if (dsdata == null)
            {
                lblError.Text = "Error retrieving problem list";
            }
            else if (dsdata.Tables.Count < 1)
            {
                lblError.Text = "Unexpected error retrieving problems";
            }
            else
            {
                Session.Contents["DataTable"] = dsdata.Tables[0];
            }
            gvProblems.DataSource = Session.Contents["DataTable"];
            gvProblems.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["ticketNo"] = gvProblems.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text;
            Session["incidentNo"] = gvProblems.Rows[Convert.ToInt32(e.CommandArgument)].Cells[2].Text;
            Response.Redirect("./Resolution.aspx");
        }
    }
}