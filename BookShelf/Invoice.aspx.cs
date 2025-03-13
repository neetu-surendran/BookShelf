using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace BookShelf
{
    public partial class Invoice : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGeneralDataFromDB();
                LoadOrderTable();
                FinalOrderSummary();
            }
        }
        public void GetGeneralDataFromDB()
        {
            CultureInfo culture = new CultureInfo("en-US");
            string getData = "select User_Table.Name, User_Table.Address, User_Table.Landmark, User_Table.District," +
                             " User_Table.State, User_Table.Pin, User_Table.Phone, " +
                             " Bill_Table.Bill_Date, Bill_Table.Bill_PayType from User_Table inner join" +
                             " Bill_Table on User_Table.User_Id = Bill_Table.User_Id";
            SqlDataReader dr = objCon.Fn_Reader(getData);
            string name = "", address = "", landmark = "", district = "", state = "", pin = "", phone = "", payType = "", date = "";
            while (dr.Read())
            {
                name = dr["Name"].ToString();
                address = dr["Address"].ToString();
                landmark = dr["Landmark"].ToString();
                district = dr["District"].ToString();
                state = dr["State"].ToString();
                pin = dr["Pin"].ToString();
                phone = dr["Phone"].ToString();
                payType = dr["Bill_PayType"].ToString();
                date = dr["Bill_Date"].ToString();
            }

            display.InnerText += name;
            bid.InnerText += Session["billId"];

            addr.InnerText = address;
            land.InnerText = landmark;
            dist.InnerText = district;
            sp.InnerText = state + " - " + pin;
            ph.InnerText += " " + phone;
            DateTime newDate = Convert.ToDateTime(date);
            bdate.InnerText += newDate.ToString("D", culture);
            pay.InnerText = payType;
        }
        public void LoadOrderTable()
        {
            string getOrders = "select Order_Table.Order_Id, Order_Table.Quantity, " +
                                "Order_Table.Order_Status, Order_Table.Sub_Total, Books_Table.Title," +
                                "Books_Table.Cover_Image FROM Books_Table INNER JOIN Order_Table ON " +
                                ".Books_Table.Book_Id = Order_Table.Book_Id WHERE Order_Table.Bill_Id = " + Session["billId"]
                                        + " and User_Id = " + Session["uid"] + "";
            DataTable dt = objCon.Fn_DataTable(getOrders);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        public void FinalOrderSummary()
        {
            string getQty = "select Sum(Quantity) from Order_Table where User_Id = "
                            + Session["uid"] + " and Bill_Id = " + Session["billId"];
            string totalQty = objCon.Fn_Scalar(getQty);
            qty.InnerText += totalQty;
            string getTotal = "SELECT Bill_Total from Bill_Table WHERE Bill_Id = " + Session["billId"];
            string total = objCon.Fn_Scalar(getTotal);
            stotal.InnerText += total;
            gtotal.InnerText += Session["grandTotal"].ToString();

        }

        protected void BtnContinueAfterPay_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }

        protected void BtnSendFb_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }
    }
}