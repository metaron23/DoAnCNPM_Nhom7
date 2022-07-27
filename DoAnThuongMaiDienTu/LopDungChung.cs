using System.Data.SqlClient;
using System.Data;

namespace DoAnThuongMaiDienTu
{
    public class LopDungChung : System.Web.UI.Page
    {
        SqlConnection conn;
        public LopDungChung()
        {
            string chuoikn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/DataBase_QuanLyDoAn.mdf") + ";Integrated Security=True";
            conn = new SqlConnection(chuoikn);
        }
        public DataTable getData(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                da.Fill(dt);
            }
            catch { }            
            return dt;
        }
        public bool updateData(string sql)
        {
            bool check = false;
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(sql, conn);
                if (comm.ExecuteNonQuery() > 0) check = true;
            }
            catch { }
            finally
            {
                conn.Close();
            }
            return check;
        }
    }
}