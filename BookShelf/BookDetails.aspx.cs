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
    public partial class BookDetails : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getName();
                string query = "select * from Books_Table where Book_Id = " + Session["bookId"] + "";
                SqlDataReader dr = objCon.Fn_Reader(query);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["Cover_Image"].ToString();
                    LblTitle.Text = dr["Title"].ToString();
                    LblAuthor.Text = dr["Author"].ToString();
                    LblPublisher.Text = dr["Publisher"].ToString();
                    LblPubYear.Text = dr["Publication_Year"].ToString();
                    LblISBN.Text = dr["ISBN"].ToString();
                    LblPrice.Text = "₹ " + dr["Price"].ToString();
                    LblDescription.Text = dr["Description"].ToString();
                    int stock = Convert.ToInt32(dr["Stock"]);
                    hfStock.Value = stock.ToString();
                    if (stock > 0)
                    {
                        LblStock.Text = "In Stock";
                        LblStock.CssClass = "text-success";
                        //for (int i = 1; i < stock; i++)
                        //{
                        //    DdlQuantity.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        //}
                    }
                    else
                    {
                        LblStock.Text = "Out of Stock";
                        LblStock.CssClass = "text-danger";
                        //DdlQuantity.Items.Add(new ListItem("Out of Stock", "0"));
                        //DdlQuantity.Enabled = false;
                    }
                }
            }
        }
        public void getName()
        {
            string getName = "select Name from User_Table where User_Id = " + Session["uid"] + "";
            string name = objCon.Fn_Scalar(getName);
            navbarDropdown.InnerText = name;
        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            int i = 0;
            string checkQuery = "select Count(Book_Id) from Cart_Table where Book_Id = " + Session["bookId"] + "";
            string count = objCon.Fn_Scalar(checkQuery);
            if (count == "1")
            {
                string selQuery = "select Quantity from Cart_Table where Book_Id = " + Session["bookId"] + " and User_Id = "
                                                                    + Session["uid"]+"";
                string quantity = objCon.Fn_Scalar(selQuery);
                //int newQuantity = Convert.ToInt32(quantity) + Convert.ToInt32(DdlQuantity.SelectedItem.Value);
                int newQuantity = Convert.ToInt32(quantity) + Convert.ToInt32(quantityInput.Value);

                string getPrice = "select Price from Books_Table where Book_Id = " + Session["bookId"] + "";
                string price = objCon.Fn_Scalar(getPrice);

                decimal subTotal = newQuantity * Convert.ToDecimal(price);

                string updateCart = "update Cart_Table set Quantity = "+ newQuantity +", Sub_Total = "
                                                                    + subTotal + "where Book_Id = " + Session["bookId"] + " and User_Id = "
                                                                    + Session["uid"] + " ";
                i = objCon.Fn_NonQuery(updateCart);
            }
            else if (count == "0")
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

                string getPrice = "select Price from Books_Table where Book_Id = " + Session["bookId"] + "";
                string price = objCon.Fn_Scalar(getPrice);

                //decimal subTotal = Convert.ToInt32(DdlQuantity.SelectedItem.Value) * Convert.ToDecimal(price);
                decimal subTotal = Convert.ToInt32(quantityInput.Value) * Convert.ToDecimal(price);

                string insCart = "insert into Cart_Table values(" + cartId + "," + Session["bookId"] + ","
                                                                 + Session["uid"] + "," + Convert.ToInt32(quantityInput.Value) + ","
                                                                 + price + "," + subTotal + ")";
                i = objCon.Fn_NonQuery(insCart);
            }
            
            if (i == 1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ShowModal", "showModal();", true);
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Insert Failed";
            }
        }
    }
}