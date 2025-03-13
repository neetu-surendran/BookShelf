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
    public partial class EditProfile : System.Web.UI.Page
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
            string getProfile = "select * from User_Table where User_Id = " + Session["uid"] + "";
            SqlDataReader dr = objCon.Fn_Reader(getProfile);
            while (dr.Read())
            {
                FileUpload1.Visible = false;
                ImageButton1.ImageUrl = dr["Photo"].ToString();
                txtName.Text = dr["Name"].ToString();
                em.Value = dr["Email"].ToString();
                address.Value = dr["Address"].ToString();
                txtLand.Text = dr["Landmark"].ToString();
                txtDist.Text = dr["District"].ToString();
                txtState.Text = dr["State"].ToString();
                pin.Value = dr["Pin"].ToString();
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            FileUpload1.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string p = string.IsNullOrEmpty(FileUpload1.FileName)? ImageButton1.ImageUrl: ("~/images/" +  FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath(p));
            string updateUser = "update User_Table set Name = '"+ txtName.Text +"', Email = '"+ em.Value +"', " +
                                                       " Address = '"+ address.Value +"', Landmark = '"+ txtLand.Text +"'," +
                                                       " District = '"+ txtDist.Text +"', State = '"+ txtState.Text +"'," +
                                                       " Pin = '"+ pin.Value +"', Phone = '"+ phone.Value +"'," +
                                                       " Photo = '"+ p +"' where User_Id = "+ Session["uid"] +"";
            int ch = objCon.Fn_NonQuery(updateUser);
            if (ch == 1)
            {
                string updateLog = "update Login_Table set Username = '"+ txtuname.Text + "', Password = '"+ txtPwd.Text + "'" +
                                                    "where Register_Id = "+ Session["uid"] +"";
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
            Response.Redirect("UserHome.aspx");
        }
    }
}