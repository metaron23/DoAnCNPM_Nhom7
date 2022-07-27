using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DoAnThuongMaiDienTu
{
    public partial class blog : System.Web.UI.Page
    {
        LopDungChung lc = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            loadWeb();
        }
        public void loadWeb()
        {
            string sql = "select * from blog";
            DataTable dt = new DataTable();
            dt = lc.getData(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = string.Format("insert into blog values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')",
               txt_idblog.Text, txt_tieude.Text, txt_chude.Text, txt_ndngan.Text, txt_tieudedu.Text,txt_nddu.Text,txt_hinhanh.Text,txt_nguoidang.Text,txt_thoigian.Text.Replace("/","-"));
            if (lc.updateData(sql))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Thêm thành công!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Thêm thất bại!');", true);
            }
            loadWeb();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql = string.Format("update monan set tieude='{0}',chude='{1}',noidungngan='{2}',tieudedu='{3}',noidungdu='{4}',hinhanh='{5}',nguoidang='{6}',thoigian='{7}' where idblog='{8}'",
               txt_tieude.Text, txt_chude.Text, txt_ndngan.Text, txt_tieudedu.Text, txt_nddu.Text, txt_hinhanh.Text, txt_nguoidang.Text, txt_thoigian.Text.Replace("/","-"), txt_idblog.Text);
            if (lc.updateData(sql))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Sửa thành công!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Sửa thất bại!');", true);
            }
            loadWeb();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string sql = string.Format("delete from blog where idblog='{0}'", txt_idblog.Text);
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