 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShelf
{
    public partial class LoginM : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            string selQuery = "select Count(Register_Id) from Login_Table where Username='"
                                                            + TxtUserN.Value + "' and Password='"
                                                            + TxtUserPwd.Value + "'";
            string countId = objCon.Fn_Scalar(selQuery);
            if (countId == "1")
            {
                string regQuery = "select Register_Id from Login_Table where Username='"
                                                                        + TxtUserN.Value + "' and Password='"
                                                                        + TxtUserPwd.Value + "'";
                string regId = objCon.Fn_Scalar(regQuery);              
                Session["uid"] = Convert.ToInt32(regId);
                string logQuery = "select Login_Type from Login_Table where Username ='"+ TxtUserN.Value +"'" +
                                                                      " and Password = '"+ TxtUserPwd.Value +"'";
                string logType = objCon.Fn_Scalar(logQuery);
                if (logType == "admin")
                {
                    FormsAuthentication.RedirectFromLoginPage(TxtUserN.Value, false);
                    Response.Redirect("AdminDashboard.aspx");
                }
                else if (logType == "user")
                {
                    bool blocked;
                    string checkUser = "select Status from User_Table where User_Id = " + regId + "";
                    string status = objCon.Fn_Scalar(checkUser);
                    blocked = (status != "Active");
                    if (blocked)
                    {
                        string script = "alert('This User has been blocked.')";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "BlockAlert", script, true);
                    }
                    else
                    {
                        FormsAuthentication.RedirectFromLoginPage(TxtUserN.Value, false);
                        Response.Redirect("UserHome.aspx");
                    }                    
                }
            }
            else
            {
                string script = "alert('Invalid Username/Password.')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
            }
        }
    }
}