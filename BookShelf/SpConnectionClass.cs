using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BookShelf
{
    public class SpConnectionClass
    {
        SqlConnection conn;
        public SpConnectionClass()
        {
            conn = new SqlConnection(@"server=LATITUDE7470\SQLEXPRESS;
                                             database=BookStoreDB;
                                             Integrated Security=true");
        }
        public DataTable Fn_DataTable(SqlCommand cmd)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            cmd.Connection = conn;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}