using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace BookShelf
{
    public partial class SelectPayment : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void UpdateIdInOrderTable(int bid, string date)
        {
            List<int> oid = new List<int>();
            string orderQuery = "select Order_Id from Order_Table where User_Id = " + Session["uid"] + " and Order_Status = 'Ordered'";
            SqlDataReader dr = objCon.Fn_Reader(orderQuery);
            while (dr.Read())
            {
                oid.Add(Convert.ToInt32(dr["Order_Id"]));
            }
            foreach (int id in oid)
            {
                string updateBId = "update Order_Table set Bill_Id = "+ bid +" where User_Id =" + Session["uid"]
                                        + " and Order_Id = " + id + " and Order_Status = 'Ordered' and Order_Date = '"+ date +"' ";
                objCon.Fn_NonQuery(updateBId);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedOption = Request.Form["paymentOption"];
            string payType = "Cash";
            if (selectedOption == "bank")
            {
                payType = "NetBanking";
                string accQuery = "select Count(AC_Num) from Account_Table where User_Id = "+ Session["uid"] +"";
                string count = objCon.Fn_Scalar(accQuery);
                if (count == "0")
                {
                    string insAcc = "insert into Account_Table values("+ Convert.ToInt32(txtAccountNumber.Text) + ", '"
                                                                       + txtAccName.Text + "',"+ Convert.ToDecimal(txtAccBalance.Text) +","
                                                                       + Session["uid"] +")";
                    objCon.Fn_NonQuery(insAcc);
                } 
                else if(count == "1")
                {
                    if (!string.IsNullOrEmpty(txtAccBalance.Text))
                    {
                        string updateAcc = "update Account_Table set AC_Balance = "
                                            + Convert.ToDecimal(txtAccBalance.Text) + " where User_Id = " + Session["uid"] + "";
                        objCon.Fn_NonQuery(updateAcc);
                    }
                }                
            }
            string date = DateTime.Now.ToString("yyyy-MM-dd");
            string getTotal = "select Sum(Sub_Total) FROM Order_Table where Order_Status = 'Ordered'";
            string total = objCon.Fn_Scalar(getTotal);
            string insBill = "insert into Bill_Table values(" + Session["uid"] + ",'" + date + "',"
                                + Convert.ToDecimal(total) + ", '"+ payType +"' ,'Pending')";
            objCon.Fn_NonQuery(insBill);
            //string getBId = "select Bill_Id from Bill_Table where User_Id = " + Session["uid"] + "and Bill_Date = '"
            //                                                    + date + "' and Bill_Status = 'Pending'";
            string getBId = "select Max(Bill_Id) from Bill_Table where User_Id = " + Session["uid"] + "and Bill_Date = '"
                                                    + date + "' and Bill_Status = 'Pending'";
            int bid = Convert.ToInt32(objCon.Fn_Scalar(getBId));
            UpdateIdInOrderTable(bid, date);
            Response.Redirect("OrderSummary.aspx");
        }
    }
}