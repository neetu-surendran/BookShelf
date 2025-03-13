using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace BookShelf
{
    public partial class ViewFeedback : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserFBGrid();
            }
        }

        public void LoadUserFBGrid()
        {
            string getFeedback = "SELECT Feedback_Table.FB_Id, Feedback_Table.FB_Msg, Feedback_Table.Status, Feedback_Table.Reply_Msg," +
                                 "User_Table.Name, User_Table.Email, User_Table.Status, Feedback_Table.User_Id " +
                                 "FROM Feedback_Table INNER JOIN User_Table ON Feedback_Table.User_Id = User_Table.User_Id " +
                                 "WHERE User_Table.Status = 'Active' and Feedback_Table.Status = 'active'";
            DataTable dt = objCon.Fn_DataTable(getFeedback);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            string check = "select count(Fb_Id) from Feedback_Table where Status ='Active'";
            string count = objCon.Fn_Scalar(check);
            if (Convert.ToInt32(count) > 0)
            {
                Panel2.Visible = true;
                Panel3.Visible = false;
            }
            else
            {
                Panel2.Visible = false;
                Panel3.Visible = true;
            }
        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, 
                                            string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }

        protected void BtnReply_Click(object sender, EventArgs e)
        {
            string appPassword = "kxey dshw kugd omol";
            string subject = "The BookShelf values your opinion.";
            SendEmail2(Session["adName"].ToString(), emailFrom.Value, appPassword, Session["name"].ToString(), 
                                            emailTo.Value, subject, replyMsg.Value);
            string updateFbTable = "update Feedback_Table set Reply_Msg = '"+ convertQuotes(replyMsg.Value) + "', Status = 'Inactive' where " +
                                        "FB_Id = "+ Session["fbId"] +"";
            int i = objCon.Fn_NonQuery(updateFbTable);
            if (i == 1)
            {
                Session["adName"] = null;
                Session["fbId"] = null;
                Session["name"] = null;
            }
            Panel1.Visible = false;
            LoadUserFBGrid();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Panel1.Visible = true;
            GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
            //string adminQuery = "select Name, Email from Admin_Table where Admin_Id = 1";
            string adminQuery = "select Name, Email from Admin_Table where Admin_Id = "+ Session["uid"] +"";
            SqlDataReader dr = objCon.Fn_Reader(adminQuery);
            while (dr.Read())
            {
                Session["adName"] = dr["Name"].ToString(); 
                emailFrom.Value = dr["Email"].ToString();
            }
            //cannot retrieve the value of hidden fields
            //Session["fbId"] = row.Cells[0].Text; 
            Session["fbId"] = Convert.ToInt32(GridView1.DataKeys[e.NewSelectedIndex].Value);
            Session["name"] = row.Cells[1].Text;
            emailTo.Value = row.Cells[2].Text;
        }
    }
}