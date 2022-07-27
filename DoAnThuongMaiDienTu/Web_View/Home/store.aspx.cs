using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DoAnThuongMaiDienTu.Web_View.Home
{
    public partial class store : System.Web.UI.Page
    {
        LopChung lc = new LopChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            loadWeb();
        }
        public void loadWeb()
        {
            string sql = "laySanPham";
            DataTable dt = new DataTable();
            dt = lc.dataAdapter(sql);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Home/Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string mamon = btn.CommandArgument;
            if (Request.Cookies["tendn"] == null)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Bạn hãy đăng nhập trước!');", true);
            }
            else
            {
                string login = Request.Cookies["tendn"].Value;
                object[] param = { "@taikhoan", "@mamon" };
                object[] values = { login, mamon };
                bool check = lc.nonQuery("themGioHang", param, values);
                if (check == true)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Thêm vào giỏ hàng thành công!');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Thêm vào giỏ hàng thất bại!');", true);
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton ibtn = (ImageButton)sender;
            string mamon = ibtn.CommandArgument;
            Response.Redirect("~/Web_View/Home/Product_1.aspx?mamon=" + mamon);
        }
    }
}