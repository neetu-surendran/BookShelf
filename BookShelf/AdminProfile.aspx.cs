using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookShelf
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProfileDetails();
            }
        }
        public void GetProfileDetails()
        {
            string getProfile = "select * from Admin_Table where Admin_Id = " + Session["uid"] + "";
            SqlDataReader dr = objCon.Fn_Reader(getProfile);
            while (dr.Read())
            {
                txtName.Text = dr["Name"].ToString();
                em.Value = dr["Email"].ToString();
                address.Value = dr["Address"].ToString();
                phone.Value = dr["Phone"].ToString();
            }
            string getLog = "select Username, Password from Login_Table where Register_Id = " + Session["uid"] + "";
            dr = objCon.Fn_Reader(getLog);
            while (dr.Read())
            {
                txtuname.Text = dr["Username"].ToString();
                txtPwd.Text = dr["Password"].ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string updateAdmin = "update Admin_Table set Name = '"+ txtName.Text + "', Address = '"+ address.Value + "'," +
                                                        " Phone = '"+ phone.Value + "', Email = '"+ em.Value + "' where " +
                                                        " Admin_Id = " + Session["uid"] + " ";
            int ch = objCon.Fn_NonQuery(updateAdmin);
            if (ch == 1)
            {
                string updateLog = "update Login_Table set Username = '" + txtuname.Text + "', Password = '" + txtPwd.Text + "'" +
                                    "where Register_Id = " + Session["uid"] + "";
                int i = objCon.Fn_NonQuery(updateLog);
                if (i == 1)
                {
                    string script = "alert('Profile updated successfully!')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessAlert", script, true);
                }
                else
                {
                    string script = "alert('Profile update failed')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
                }
            }
            else
            {
                string script = "alert('Profile update failed')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
            }
            GetProfileDetails();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
    }
}