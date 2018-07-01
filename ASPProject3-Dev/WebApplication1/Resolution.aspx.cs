using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class Resolution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblticketNo.Text = (string)Session["ticketNo"];
            lblIncidentNo.Text = (string)Session["incidentNo"];
            lblError.Text = "";
            if (!IsPostBack)
            {
                loadTech();
            }
        }

        private void loadTech()
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
        }

        private bool requiredFields()
        {
            lblError.Text = "";
            int output; 
            if (txtResDesc.Text.Trim() != "" && drpTech.SelectedValue != null && txtHours.Text.Trim() != null && Int32.TryParse(txtHours.Text.Trim(), out output))
            {
                return true;
            }
            else
            {
                lblError.Text += " check fields marked with an *. Hours must be numeric.";
                return false;
            }
        }

        private bool otherFields()
        {
            DateTime result;
            decimal output;
            if (txtDateFix.Text.Trim() != "")
            {
                if (!DateTime.TryParse(txtDateFix.Text.Trim(), out result))
                {
                    lblError.Text += " Date Fixed not a valid date";
                    return false;
                }
                DateTime time = Convert.ToDateTime(txtDateFix.Text.Trim());
                Int32 valid = time.CompareTo(DateTime.Now);

                if (valid > 0)
                {
                    lblError.Text += " Date Fixed must be before or equal to the current time";
                    return false;
                }
            }

            if (txtDateOnsite.Text.Trim() != "")
            {
                if (!DateTime.TryParse(txtDateOnsite.Text.Trim(), out result))
                {
                    lblError.Text += " Date Onsite not a valid date";
                    return false;
                }
                DateTime time = Convert.ToDateTime(txtDateOnsite.Text.Trim());
                Int32 valid = time.CompareTo(DateTime.Now);

                if (valid > 0)
                {
                    lblError.Text += " Date Onsite must be before or equal to the current time";
                    return false;
                }
            }
            if (txtMileage.Text.Trim() != "")
            {
                if (!decimal.TryParse(txtMileage.Text.Trim(), out output))
                {
                    return false;
                }
                if (Convert.ToDecimal(txtMileage.Text.Trim()) <= 0)
                {
                    lblError.Text += " Mileage must be positive";
                    return false;
                }
            }
            if (txtMisc.Text.Trim() != "")
            {
                if (!decimal.TryParse(txtMisc.Text.Trim(), out output))
                {
                    return false;
                }
                if (Convert.ToDecimal(txtMisc.Text.Trim()) <= 0)
                {
                    lblError.Text += " Misc must be positive";
                    return false;
                }
            }
            if (txtSupplies.Text.Trim() != "")
            {
                if (!decimal.TryParse(txtSupplies.Text.Trim(), out output))
                {
                    return false;
                } 
                if (Convert.ToDecimal(txtSupplies.Text.Trim()) <= 0)
                {
                    lblError.Text += " Supplies must be positive";
                    return false;
                }
            }
            return true;
        }

        private void clear()
        {
            txtResDesc.Text = "";
            txtSupplies.Text = "";
            txtMisc.Text = "";
            txtMileage.Text = "";
            txtHours.Text = "";
            txtDateOnsite.Text = "";
            txtDateFix.Text = "";
            drpTech.SelectedIndex = 0; 
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (requiredFields() && otherFields())
            {
                int success = clsDatabase.InsertResolution(Convert.ToInt32(lblticketNo.Text.Trim()), Convert.ToInt32(lblIncidentNo.Text.Trim()),
                                             Convert.ToInt32(lblResolutionNo.Text.Trim()), txtResDesc.Text.Trim(), txtDateFix.Text.Trim(),
                                             txtDateOnsite.Text.Trim(), Convert.ToInt32(drpTech.SelectedValue), Convert.ToDecimal(txtHours.Text.Trim()), txtMileage.Text.Trim(), txtSupplies.Text.Trim(), txtMisc.Text.Trim(), chkNoCost.Checked);
                clear();
                if (success == -1)
                {
                    lblError.Text += " Error inserting resolution into database";
                }
                lblResolutionNo.Text = (Convert.ToInt32(lblResolutionNo.Text) + 1).ToString();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("./MainSelection.aspx");
        }
    }
}