using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShelf
{
    public partial class UserRegister : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnUserReg_Click(object sender, EventArgs e)
        {
            string check = "select count(Register_Id) from Login_Table where Username = '" + TxtUsername.Text + "' and " +
                                                " Password = '" + TxtPwd.Text + "' ";
            string chCount = objCon.Fn_Scalar(check);
            if (Convert.ToInt32(chCount) >= 1)
            {
                string script = "alert('A user is already registered with this username.')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ExistAlert", script, true);
            }
            else
            {
                string selQuery = "select Max(Register_Id) from Login_Table";
                string maxRegId = objCon.Fn_Scalar(selQuery);
                int regId;
                if (maxRegId == "")
                {
                    regId = 1;
                }
                else
                {
                    regId = Convert.ToInt32(maxRegId) + 1;
                }
                string p = "~/images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(p));
                string insUser = "insert into User_Table values(" + regId + ",'"
                                                                  + TxtNameUser.Text + "','" + TxtEMailU.Text + "','"
                                                                  + TxtAddU.Text + "','" + TxtLandM.Text + "','"
                                                                  + TxtDist.Text + "','" + DropDownList1.SelectedItem.Value + "',"
                                                                  + TxtPin.Text + "," + TxtPhone.Text + ",'"
                                                                  + p + "','Active')";
                int i = objCon.Fn_NonQuery(insUser);
                if (i == 1)
                {
                    string insLogin = "insert into Login_Table values(" + regId + ",'" + TxtUsername.Text + "','"
                                                                       + TxtPwd.Text + "','user')";
                    int j = objCon.Fn_NonQuery(insLogin);
                    if (j == 1)
                    {
                        string script = "alert('You are registered!');";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessAlert", script, true);
                    }
                    else
                    {
                        string sc = "alert('Sorry! Registration Failed.');";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", sc, true);
                    }
                }
                else
                {
                    string script = "alert('Sorry! Registration Failed.');";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
                }
            }
        }
    }
}