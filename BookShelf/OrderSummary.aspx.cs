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
    public partial class OrderSummary : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGeneralDataFromDB();
                BindOrderTable();
                FinalOrderSummary();
            }
        }

        public void GetGeneralDataFromDB()
        {
            CultureInfo culture = new CultureInfo("en-US");
            string getData = "select User_Table.Name, User_Table.Address, User_Table.Landmark, User_Table.District," +
                             " User_Table.State, User_Table.Pin, User_Table.Phone, Bill_Table.Bill_Id, " +
                             " Bill_Table.Bill_Date, Bill_Table.Bill_PayType from User_Table inner join" +
                             " Bill_Table on User_Table.User_Id = Bill_Table.User_Id";
            SqlDataReader dr = objCon.Fn_Reader(getData);
            string name = "", address="", landmark="", district="", state="", pin="", phone="", payType="";            
            string date = "";
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
                Session["billId"] = Convert.ToInt32(dr["Bill_Id"]);
                date = dr["Bill_Date"].ToString();
            }

            display.InnerText += name;
            DateTime newDate = Convert.ToDateTime(date);
            order.InnerText += newDate.ToString("D", culture);
            bid.InnerText += Session["billId"];

            addr.InnerText = address;
            land.InnerText = landmark;
            dist.InnerText = district;
            sp.InnerText = state + " - " + pin;
            ph.InnerText += " " + phone;

            pay.InnerText = payType;
        }
        
        public void BindOrderTable()
        {
            string getOrders = "SELECT Order_Table.Order_Id, Order_Table.Quantity, " +
                                "Order_Table.Order_Status, Order_Table.Sub_Total, Books_Table.Title," +
                                "Books_Table.Cover_Image, Books_Table.Price FROM Books_Table INNER JOIN Order_Table ON " +
                                ".Books_Table.Book_Id = Order_Table.Book_Id WHERE Order_Table.Order_Status = 'Ordered'";
            DataTable dt = objCon.Fn_DataTable(getOrders);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        public void FinalOrderSummary()
        {
            decimal discount = 0, delivery = 0, grandTotal;
            string getQty = "select Sum(Quantity) from Order_Table where User_Id = "
                                        + Session["uid"] +" and Bill_Id = "+ Session["billId"] + " and Order_Status = 'Ordered'";
            string totalQty = objCon.Fn_Scalar(getQty);
            qty.InnerText += totalQty;
            disc.InnerText += discount.ToString();
            del.InnerText += delivery.ToString();
            string getTotal = "SELECT Bill_Total from Bill_Table WHERE Bill_Id = " + Session["billId"] + " AND Bill_Status = 'Pending'";
            string total = objCon.Fn_Scalar(getTotal);
            stotal.InnerText += total;
            grandTotal = Convert.ToDecimal(total) - (discount + delivery);
            Session["grandTotal"] = grandTotal;
            gtotal.InnerText += grandTotal.ToString();
        }

        public void UpdateOrderStatus()
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
                string updateStatus = "update Order_Table set Order_Status = 'Confirmed' where User_Id =" + Session["uid"]
                                        + " and Order_Id = " + id + " and Order_Status = 'Ordered' ";
                objCon.Fn_NonQuery(updateStatus);
            }
        }

        public void UpdateBookStock()
        {
            Dictionary<int, int> bookQty = new Dictionary<int, int>();
            string stockQuery = "select Book_Id, Quantity from Order_Table where Bill_Id = "
                                                + Session["billId"] + " and User_Id = "+ Session["uid"] +"";
            SqlDataReader dr = objCon.Fn_Reader(stockQuery);
            while (dr.Read())
            {
                if (bookQty.TryGetValue(Convert.ToInt32(dr["Book_Id"]), out int quantity))
                {
                    bookQty[Convert.ToInt32(dr["Book_Id"])] = quantity + Convert.ToInt32(dr["Quantity"]);
                }
                else
                {
                    bookQty.Add(Convert.ToInt32(dr["Book_Id"]), Convert.ToInt32(dr["Quantity"]));                   
                }
                
            }
            foreach (KeyValuePair<int,int> entry in bookQty)
            {
                string getStock = "select Stock from Books_Table where Book_Id = "+ entry.Key +"";
                string stock = objCon.Fn_Scalar(getStock);
                int newStock = Convert.ToInt32(stock) - entry.Value;
                string updateStock = "update Books_Table set Stock = "+ newStock + " where Book_Id = " + entry.Key + "";
                objCon.Fn_NonQuery(updateStock);
            }
        }

        protected void BtnPay_Click(object sender, EventArgs e)
        {
            string getPayType = "select Bill_PayType from Bill_Table where User_Id = " + Session["uid"]
                                                                                        + " and Bill_Status = 'Pending'";
            string payType = objCon.Fn_Scalar(getPayType);
            if (payType == "NetBanking")
            {                    
                BillDeductServiceReference.ServiceClient obj = new BillDeductServiceReference.ServiceClient();
                string accNumQuery = "select AC_Num from Account_Table where User_Id = " + Session["uid"] + "";
                string accNum = objCon.Fn_Scalar(accNumQuery);
                string bankMessage = obj.BillDeduction(Convert.ToInt32(Session["uid"]), Convert.ToInt32(accNum),
                                                                            Convert.ToDecimal(Session["grandTotal"]));
                Session["bankMsg"] = bankMessage;
            }
            else
            {
                Session["bankMsg"] = "COD: Success";
            }

            string updateBillStatus = "update Bill_Table set Bill_Status = 'Paid' where User_Id = " + Session["uid"] 
                                                                                        + " and Bill_Status = 'Pending'";
            objCon.Fn_NonQuery(updateBillStatus);
            UpdateOrderStatus();
            UpdateBookStock();
            Response.Redirect("Invoice.aspx");
        }

        protected void BtnCancelOrder_Click(object sender, EventArgs e)
        {
            List<int> oid = new List<int>();
            string oIdQuery = "select Order_Id from Order_Table where User_Id = "+ Session["uid"] 
                                                                        +" and Bill_Id = "+ Session["billId"] +"";
            SqlDataReader dr = objCon.Fn_Reader(oIdQuery);
            while (dr.Read())
            {
                oid.Add(Convert.ToInt32(dr["Order_Id"]));
            }
            foreach (int id in oid)
            {
                int i = AddBackToCart(id);
                if (i == 1)
                {
                    string delQ = "delete from Order_Table where Order_Id = "+ id + " and Bill_Id = " + Session["billId"] + "" +
                                                                    "and  User_Id = " + Session["uid"] +"";
                    objCon.Fn_NonQuery(delQ);
                }
            }

            string delBillQ = "delete from Bill_Table where  Bill_Id = " + Session["billId"] + " and User_Id = " + Session["uid"] + "";
            int j = objCon.Fn_NonQuery(delBillQ);
            if (j == 1)
            {
                if (Session["billId"] != null)
                {
                    Session["billId"] = null;
                }
                if (Session["grandTotal"] != null)
                {
                    Session["grandTotal"] = null;
                }
            }
            Response.Redirect("ViewCart.aspx");
        }
        public int AddBackToCart(int id)
        {
            string selQuery = "select Max(Cart_Id) from Cart_Table";
            string maxCartId = objCon.Fn_Scalar(selQuery);
            int cartId;
            if (maxCartId == "")
            {
                cartId = 1;
            }
            else
            {
                cartId = Convert.ToInt32(maxCartId) + 1;
            }
            int bookId = 0, quantity = 0;
            decimal subTotal = 0;
            string getOrder = "select Book_Id, Quantity, Sub_Total from Order_Table where Order_Id = " + id + "";
            SqlDataReader dr = objCon.Fn_Reader(getOrder);
            while (dr.Read())
            {
                bookId = Convert.ToInt32(dr["Book_Id"]);
                quantity = Convert.ToInt32(dr["Quantity"]);
                subTotal = Convert.ToInt32(dr["Sub_Total"]);
            }

            string getPrice = "select Price from Books_Table where Book_Id = " + bookId + "";
            string price = objCon.Fn_Scalar(getPrice);

            string insCart = "insert into Cart_Table values(" + cartId + "," + bookId + ","
                                                             + Session["uid"] + "," + quantity + ","
                                                             + price + "," + subTotal + ")";
            int i = objCon.Fn_NonQuery(insCart);
            return i;
        }
    }
}