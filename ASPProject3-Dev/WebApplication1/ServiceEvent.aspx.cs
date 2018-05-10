using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class ServiceEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";
            if (!IsPostBack)
            {
                loadClients();
            }
        }

        private void loadClients()
        {
            DataSet dsData;

            dsData = clsDatabase.GetClientList();
            if (dsData == null)
            {
                lblError.Text += " Error Retrieving Clients";
            }
            else if (dsData.Tables.Count < 1)
            {
                lblError.Text += " Unexpected Error Retrieving clients";
                dsData.Dispose();
            }
            else
            {
                drpClient.DataSource = dsData.Tables[0];
                drpClient.DataTextField = "ClientName";
                drpClient.DataValueField = "ClientID";
                drpClient.AppendDataBoundItems = true;
                drpClient.DataBind();
                dsData.Dispose();
            }
        }
        public bool requiredFields()
        {
            Int64 phoneNum;
            if (Int64.TryParse(txtPhone.Text, out phoneNum) &&
                txtPhone.Text.Trim().Length == 10 &&
                txtContact.Text.Trim().Length > 0 &&
                drpClient.SelectedValue != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void btnReturn_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("./MainSelection.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            drpClient.SelectedIndex = 0;
            txtContact.Text = "";
            txtPhone.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (requiredFields())
            {
                Int32 ticketID = clsDatabase.InsertServiceEvent(Convert.ToInt32(drpClient.SelectedValue), DateTime.Now, txtPhone.Text.Trim(), txtContact.Text.Trim());
                Session["TicketID"] = ticketID;
                Response.Redirect("./Problem.aspx");
            }
            else
            {
                lblError.Text = "Check Required Fields as indicated by the *. Phone number must be 10 digits, only numbers, no spaces.";
            }            
        }
    }
}