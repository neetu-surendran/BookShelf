using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShelf
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            getName();

            string catQuery = "select count(Category_Id) from Category_Table where Status = 'Available'";
            string count = objCon.Fn_Scalar(catQuery);
            cat.InnerText += count;

            string bkQuery = "select count(Book_Id) from Books_Table where Status = 'Available'";
            string bCount = objCon.Fn_Scalar(bkQuery);
            bk.InnerText += bCount;

            string conQuery = "select count(Bill_Id) from Bill_Table where Bill_Status='Paid'";
            string billC = objCon.Fn_Scalar(conQuery);
            con.InnerText += billC;

            string penQuery = "select count(Bill_Id) from Bill_Table where Bill_Status='Pending'";
            string billP = objCon.Fn_Scalar(penQuery);
            pen.InnerText += billP;

            string amtQuery = "select sum(Bill_Total) from Bill_Table where Bill_Status='Paid'";
            string billAmt = objCon.Fn_Scalar(amtQuery);
            amt.InnerText += billAmt;

        }
        public void getName()
        {
            string getName = "select Name from Admin_Table where Admin_Id = " + Session["uid"] + "";
            string name = objCon.Fn_Scalar(getName);
            admin.InnerText += name;
        }

    }
}