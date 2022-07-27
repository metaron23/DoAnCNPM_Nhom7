using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DoAnThuongMaiDienTu
{
    public partial class account : System.Web.UI.Page
    {
        LopDungChung lc = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            loadWeb();
        }
        public void loadWeb()
        {
            string sql = "select * from khachhang";
            DataTable dt = new DataTable();
            dt = lc.getData(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string sql = string.Format("delete from khachhang where taikhoan='{0}'", txt_tk.Text);
            if (lc.updateData(sql))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Xoá thành công!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Xoá thất bại!');", true);
            }
            loadWeb();
        }
    }
}