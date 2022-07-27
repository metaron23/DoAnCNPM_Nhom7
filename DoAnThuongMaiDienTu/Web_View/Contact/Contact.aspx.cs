using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnThuongMaiDienTu.Web_View.Contact
{
    public partial class Contact : System.Web.UI.Page
    {
        LopChung lc = new LopChung();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Home/Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object[] param = { "@email", "@name", "@sdt", "@mess", "@thoigian" };
            string date = DateTime.Now.ToString("yyyy/MM/dd").Replace("/", "-");
            object[] values = { TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, date };
            bool check = lc.nonQuery("themLienHe", param, values);
            if (check == true)
            {
                TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = ""; TextBox4.Text = "";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Gửi liên hệ thành công!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Gửi liên hệ thất bại!');", true);
            }
        }
    }
}