using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BookShelf
{
    public class ConnectionClass
    {
        SqlConnection connection;
        SqlCommand command;
        public ConnectionClass()
        {
            connection = new SqlConnection(@"server=LATITUDE7470\SQLEXPRESS;
                                             database=BookStoreDB;
                                             Integrated Security=true");
        }

        public int Fn_NonQuery(string sqlQuery)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            command = new SqlCommand(sqlQuery, connection);
            connection.Open();
            int i = command.ExecuteNonQuery();
            connection.Close();
            return i;
        }
        public string Fn_Scalar(string sqlQuery)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            command = new SqlCommand(sqlQuery, connection);
            connection.Open();
            string s = command.ExecuteScalar().ToString();
            connection.Close();
            return s;
        }
        public SqlDataReader Fn_Reader(string sqlQuery)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            command = new SqlCommand(sqlQuery, connection);
            connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            return dr;
        }

        public DataSet Fn_DataSet(string sqlQuery)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, connection);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataTable Fn_DataTable(string sqlQuery)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}