using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace DoAnThuongMaiDienTu
{
    public class LopChung : System.Web.UI.Page
    {
        SqlConnection conn;
        public LopChung()
        {
            string chuoikn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/DataBase_QuanLyDoAn.mdf") + ";Integrated Security=True";
            conn = new SqlConnection(chuoikn);
        }
        public DataTable dataAdapter(string sql)
        {
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable dataAdapterPara(string sql, object[] param, object[] values)
        {
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < param.Length; i++)
            {
                comm.Parameters.AddWithValue(param[i].ToString(), values[i].ToString());
            }
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public bool nonQuery(string sql, object[] param, object[] values)
        {
            bool check = false;
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < param.Length; i++)
            {
                comm.Parameters.AddWithValue(param[i].ToString(), values[i].ToString());
            }
            try
            {
                conn.Open();
                if (comm.ExecuteNonQuery() > 0) check = true;
            }
            catch { }
            finally
            {
                conn.Close();
            }
            return check;
        }
        public object scalar(string sql, object[] param, object[] values)
        {
            object bien = null;
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < param.Length; i++)
            {
                comm.Parameters.AddWithValue(param[i].ToString(), values[i].ToString());
            }
            try
            {
                conn.Open();
                bien = comm.ExecuteScalar();
            }
            catch { }
            finally
            {
                conn.Close();
            }
            return bien;
        }
    }
}