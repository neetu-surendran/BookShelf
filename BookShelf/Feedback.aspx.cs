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
    public partial class Feedback : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }

        protected void BtnFeedback_Click(object sender, EventArgs e)
        {

            string feedbackText = feedbackTxt.Value;
            string insFeedback = "insert into Feedback_Table values("+ Session["uid"] +",'"+ convertQuotes(feedbackText)
                                                                                                    + "', NULL, 'active')";
            objCon.Fn_NonQuery(insFeedback);            
            Response.Redirect("UserHome.aspx");
        }
    }
}