using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class TechnicianInformationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTechnicians();
               
            }
        }

        //***** Procedures *************************************************************************

        // LoadTechnicians()
        // Populates dropdown list with Technicians already in database
        private void LoadTechnicians()
        {
            DataSet dsData;

            dsData = clsDatabase.GetTechnicianList();
            if (dsData == null)
            {
                txtFName.Text = "Error retrieving technician list";
            }
            else if (dsData.Tables.Count < 1)
            {
                txtFName.Text = "Error retrieving technician list";
                dsData.Dispose();
            }
            else
            {
                drpTechnician.DataSource = dsData.Tables[0];
                drpTechnician.DataTextField = "TechName";
                drpTechnician.DataValueField = "TechnicianID";
                drpTechnician.AppendDataBoundItems = true;
                drpTechnician.DataBind();                
                dsData.Dispose();
            }
        }

        // DisplayTechnician()
        // populates the fields with the selected tech's info
        private void DisplayTechnician(string strTechnicianID)
        {
            DataSet dsData;

            dsData = clsDatabase.GetTechniciansByID(strTechnicianID);

            if (dsData == null)
            {
                txtFName.Text = "Error retrieving technician";
            }
            else if (dsData.Tables.Count < 1)
            {
                txtFName.Text = "Error retrieving technician";
                dsData.Dispose();
            }
            else
            {
                if (dsData.Tables[0].Rows[0]["LName"] == DBNull.Value)
                {
                    txtLName.Text = "";
                }
                else
                {
                    txtLName.Text = dsData.Tables[0].Rows[0]["LName"].ToString();
                }
                if (dsData.Tables[0].Rows[0]["FName"] == DBNull.Value)
                {
                    txtFName.Text = "";
                }
                else
                {
                    txtFName.Text = dsData.Tables[0].Rows[0]["FName"].ToString();
                }
                if (dsData.Tables[0].Rows[0]["MInit"] == DBNull.Value)
                {
                    txtMiddleInitial.Text = "";
                }
                else
                {
                    txtMiddleInitial.Text = dsData.Tables[0].Rows[0]["Minit"].ToString();
                }
                if (dsData.Tables[0].Rows[0]["EMail"] == DBNull.Value)
                {
                    txtEmail.Text = "";
                }
                else
                {
                    txtEmail.Text = dsData.Tables[0].Rows[0]["EMail"].ToString();
                }
                if (dsData.Tables[0].Rows[0]["Dept"] == DBNull.Value)
                {
                    txtDepartment.Text = "";
                }
                else
                {
                    txtDepartment.Text = dsData.Tables[0].Rows[0]["Dept"].ToString();
                }
                if (dsData.Tables[0].Rows[0]["Phone"] == DBNull.Value)
                {
                    txtPhone.Text = "";
                }
                else
                {
                    txtPhone.Text = dsData.Tables[0].Rows[0]["Phone"].ToString();
                }
                if (dsData.Tables[0].Rows[0]["HRate"] == DBNull.Value)
                {
                    txtHourlyRate.Text = "";
                }
                else
                {
                    txtHourlyRate.Text = dsData.Tables[0].Rows[0]["HRate"].ToString();
                }

                dsData.Dispose();
            }
        }
        //***** Event listeners ********************************************************************

        //** btnMainMenu_Click
        //** sends user back to the main menu page
        protected void btnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("./MainSelection.aspx");
        }

        // btnAccept_Click()
        //
        protected void btnAccept_Click(object sender, EventArgs e)
        {
            if (!requiredFields())
            {
                lblTechAdded.Text = "Fields not filled out correctly";
            }
            else
            {
                if (rdoUpdateTech.Checked)
                {
                    int intRet = clsDatabase.UpdateTechnician(Convert.ToInt32(drpTechnician.SelectedValue), txtLName.Text.Trim(), txtFName.Text.Trim(), txtMiddleInitial.Text.Trim(), txtEmail.Text.Trim(), txtDepartment.Text.Trim(), txtPhone.Text.Trim(), txtHourlyRate.Text.Trim());
                    if (intRet == -1)
                    {
                        lblTechAdded.Text = "Error updating Technician";
                    }
                    else
                    {
                        lblTechAdded.Text = "Technician Updated";
                        drpTechnician.Items.Clear();
                        drpTechnician.Items.Add("");
                        LoadTechnicians();
                    }
                }
                else if (rdoAddTech.Checked)
                {
                    int intRet = clsDatabase.InsertTechnician(txtLName.Text.Trim(), txtFName.Text.Trim(), txtMiddleInitial.Text.Trim(), txtEmail.Text.Trim(), txtDepartment.Text.Trim(), txtPhone.Text.Trim(), txtHourlyRate.Text.Trim());
                    if (intRet == -1)
                    {
                        lblTechAdded.Text = "Error adding new Technician";
                    }
                    else
                    {
                        lblTechAdded.Text = "New Technician added, ID is " + intRet.ToString();
                        drpTechnician.Items.Clear();
                        drpTechnician.Items.Add("");
                        LoadTechnicians();
                    }
                }
                else
                {
                    if (clsDatabase.DeleteTechnician(Convert.ToInt32(drpTechnician.SelectedValue)) == -1)
                    {
                        lblTechAdded.Text = "Error Deleting Technician";
                    }
                    else
                    {
                        lblTechAdded.Text = "Technician deleted";
                        drpTechnician.Items.Clear();
                        drpTechnician.Items.Add("");
                        LoadTechnicians();
                    }
                }
            }           
        }

        // drpTechnician_SelectedIndexChanged
        // populates fields with the selected technician
        protected void drpTechnician_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpTechnician.SelectedIndex == 0)
            {
                clearFields();
            }
            else
            {
                DisplayTechnician(drpTechnician.SelectedValue.ToString());
                requiredFields();
            }
        }

        // rdoUpdateTech_CheckedChanged
        // checks if update tech mode is enabled. If not, makes sure addtech is checked
        protected void rdoUpdateTech_CheckedChanged(object sender, EventArgs e)
        {
            if (!rdoUpdateTech.Checked)
            {
                rdoAddTech.Checked = true;
            }
            else
            {
                rdoAddTech.Checked = false;
                rdoDeleteTech.Checked = false;
            }
        }

        // rdoAddTech_CheckedChanged
        // checks if add tech mode is enabled. If not, makes sure updatetech is checked
        protected void rdoAddTech_CheckedChanged(object sender, EventArgs e)
        {
            if (!rdoAddTech.Checked)
            {
                rdoUpdateTech.Checked = true;
            }
            else
            {
                rdoUpdateTech.Checked = false;
                rdoDeleteTech.Checked = false;
            }
        }

        protected void rdoDeleteTech_CheckedChanged(object sender, EventArgs e)
        {
            if (!rdoDeleteTech.Checked)
            {
                rdoUpdateTech.Checked = true;
            }
            else
            {
                rdoDeleteTech.Checked = true;
                rdoUpdateTech.Checked = false;
                rdoAddTech.Checked = false;
            }
        } 
        // required fields TextChanged 
        // calls the requiredFields() method to enable the accept button if all required fields are 
        // filled out properly
        protected void txtFName_TextChanged(object sender, EventArgs e)
        {
            requiredFields();
        }

        protected void txtLName_TextChanged(object sender, EventArgs e)
        {
            requiredFields();
        }

        protected void txtPhone_TextChanged(object sender, EventArgs e)
        {
            requiredFields();
        }

        protected void txtHourlyRate_TextChanged(object sender, EventArgs e)
        {
            requiredFields();
        }

        // txtMiddleInitial_TextChanged
        // Makes sure that if Middle initial is entered, it's only 1 character in length
        protected void txtMiddleInitial_TextChanged(object sender, EventArgs e)
        {
            if (txtMiddleInitial.Text.Trim().Length > 1)
            {
                txtMiddleInitial.Text = txtMiddleInitial.Text.Trim().ElementAt(0).ToString();
                lblMInitWarning.Visible = true;
            }
            else
            {
                lblMInitWarning.Visible = false;
            }
        }

        //***** Methods *****************************************************************************

        // requiredFields()
        // checks the required fields for their conditions
        // if met, enables the accept button.  Disables it if they aren't
        public bool requiredFields()
        {
            Int64 return1;
            decimal return2;

            if (txtFName.Text.Trim() != "" &&
                txtLName.Text.Trim() != "" &&
                txtPhone.Text.Trim().Length == 10 &&
                Int64.TryParse(txtPhone.Text.Trim(), out return1) &&
                txtHourlyRate.Text.Trim() != "" &&
                decimal.TryParse(txtHourlyRate.Text.Trim(), out return2) &&
                Convert.ToDecimal(txtHourlyRate.Text.TrimEnd()) > 0 &&
                (txtMiddleInitial.Text.Trim().Length == 1 || txtMiddleInitial.Text.Trim().Length == 0))
            {
                btnAccept.Enabled = true;
                return true;
            }
            else
            {
                btnAccept.Enabled = false;
                return false;
            }
        }

        public void clearFields()
        {
            txtFName.Text = "";
            txtLName.Text = "";
            txtMiddleInitial.Text = "";
            txtEmail.Text = "";
            txtDepartment.Text = "";
            txtPhone.Text = "";
            txtHourlyRate.Text = "";
        }

        

             
    }
}