using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShelf
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdmReg_Click(object sender, EventArgs e)
        {
            string check = "select count(Register_Id) from Login_Table where Username = '"+ TxtUname.Text +"' and " +
                                                " Password = '"+ TxtPwd.Text +"' ";
            string chCount = objCon.Fn_Scalar(check);
            if (Convert.ToInt32(chCount) >= 1)
            {
                string script = "alert('An admin is already registered with this username.')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ExistAlert", script, true);
            }
            else
            {
                string selQuery = "select Max(Register_Id) from Login_Table";
                string maxRegId = objCon.Fn_Scalar(selQuery);
                int regId = 0;
                if (maxRegId == "")
                {
                    regId = 1;
                }
                else
                {
                    regId = Convert.ToInt32(maxRegId) + 1;
                }
                string insReg = "insert into Admin_Table values(" + regId + ", '"
                                                    + TxtAName.Text + "','" + TxtAdd.Text + "','"
                                                    + TxtPhone.Text + "','" + TxtAEm.Text + "')";
                int i = objCon.Fn_NonQuery(insReg);
                if (i == 1)
                {
                    string insLogin = "insert into Login_Table values(" + regId + ", '" + TxtUname.Text + "','"
                                                                        + TxtPwd.Text + "','admin')";
                    int j = objCon.Fn_NonQuery(insLogin);
                    if (j == 1)
                    {
                        string script = "alert('Admin registered successfully!')";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessAlert", script, true);
                    }
                    else
                    {
                        string script = "alert('Admin register failed')";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
                    }
                }
                else
                {
                    string script = "alert('Admin register failed')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
                }
            }
        }
    }
}