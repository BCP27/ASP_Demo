using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class Problem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";            

            if (!IsPostBack)
            {
                loadDropDowns();
                lblTicketID.Text = Session["TicketID"].ToString();
            }
        }

        private void clear()
        {
            drpTech.SelectedIndex = 0;
            drpProduct.SelectedIndex = 0;
            txtProbDesc.Text = "";
        }

        private void loadDropDowns()
        {
            DataSet dsData;

            dsData = clsDatabase.GetTechnicianList();
            if (dsData == null)
            {
                lblError.Text += " Error Retrieving Technicians";
            }
            else if (dsData.Tables.Count < 1)
            {
                lblError.Text += " Unexpected Error Retrieving Technicians";
                dsData.Dispose();
            }
            else
            {
                drpTech.DataSource = dsData.Tables[0];
                drpTech.DataTextField = "TechName";
                drpTech.DataValueField = "TechnicianID";
                drpTech.AppendDataBoundItems = true;
                drpTech.DataBind();
                dsData.Dispose();
            }

            dsData = clsDatabase.GetProductList();
            if (dsData == null)
            {
                lblError.Text += " Error Retrieving Product List";
            }
            else if (dsData.Tables.Count < 1)
            {
                lblError.Text += " Unexpected Error Retrieving Product List";
                dsData.Dispose();
            }
            else
            {
                drpProduct.DataSource = dsData.Tables[0];
                drpProduct.DataTextField = "ProductDesc";
                drpProduct.DataValueField = "ProductID";
                drpProduct.AppendDataBoundItems = true;
                drpProduct.DataBind();
                dsData.Dispose();
            }
        }

        public bool requiredFields()
        {
            if (drpProduct.SelectedValue != null &&
                drpTech.SelectedValue != null &&
                txtProbDesc.Text.Trim() != "")
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (requiredFields())
            {
                clsDatabase.InsertProblem(Convert.ToInt32(lblTicketID.Text), Convert.ToInt32(lblIncidentNo.Text), txtProbDesc.Text, Convert.ToInt32(drpTech.SelectedValue), drpProduct.SelectedValue.ToString());
                lblIncidentNo.Text = (Convert.ToInt32(lblIncidentNo.Text) + 1).ToString();
                clear();
            }
            else
            {
                lblError.Text = "Ensure you have selected a technician, a product, and entered a description of your problem.";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("./ServiceEvent.aspx");
        }
    }
}