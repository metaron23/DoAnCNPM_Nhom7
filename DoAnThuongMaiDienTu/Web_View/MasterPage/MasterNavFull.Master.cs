using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DoAnThuongMaiDienTu.Web_View.MasterPage
{
    public partial class MasterNavFull : System.Web.UI.MasterPage
    {
        LopChung lc = new LopChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            loadWeb();
        }
        public void loadWeb()
        {
            DataTable dt = new DataTable();
            if (Request.Cookies["tendn"] == null)
            {
                dt = null;
            }
            else
            {
                
                string tendn = Request.Cookies["tendn"].Value != null ? Request.Cookies["tendn"].Value : "";
                Label4.Text = tendn;
                string sql = "layGioHang";
                object[] param = { "@taikhoan" };
                object[] values = { tendn };
                dt = lc.dataAdapterPara(sql, param, values);
            }
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Home/Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/About/About.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Blog/Blog.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Gallery/Gallery.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Contact/Contact.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Web_View/Home/Home.aspx");
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string login = Login1.UserName;
            string pass = Login1.Password;
            string sql = "checkDN";
            object[] param = { "@tendn", "@pass" };
            object[] values = { login, pass };
            int value = Convert.ToInt32(lc.scalar(sql, param, values));
            if (value > 0)
            {
                Response.Cookies["tendn"].Value = login;
                Label4.Text = login;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Đăng nhập thành công');", true);
                loadWeb();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Đăng nhập thất bại');", true);
            }
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "dangKy";
            object[] param = { "@user", "@pwd" };
            object[] values = { TextBox4.Text, TextBox5.Text };
            bool value = lc.nonQuery(sql, param, values);
            if (value)
            {
                loadWeb();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Đăng ký thành công');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Đăng ký thất bại');", true);
            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Home/store.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
            Response.Cookies["tendn"].Expires = DateTime.Now.AddDays(-1);
            Label4.Text = "";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Đăng xuất thành công');", true);
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            loadWeb();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string login = Request.Cookies["tendn"].Value;
            object[] param = { "@taikhoan", "@mamon" };
            object[] values = { login, btn.CommandArgument };
            bool check = lc.nonQuery("xoaGioHang", param, values);
            if (check == true)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Xoá giỏ hàng thành công!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Xoá giỏ hàng thất bại!');", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string tendn = Request.Cookies["tendn"].Value != null ? Request.Cookies["tendn"].Value : "";
            string sql = "themHoaDon";
            object[] param = { "@taikhoan"};
            object[] values = { tendn };
            bool value = lc.nonQuery(sql, param, values);
            if (value)
            {
                loadWeb();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Đặt thành công');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Đặt thất bại');", true);
            }
        }
    }
}