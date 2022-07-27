using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DoAnThuongMaiDienTu
{
    public partial class QuanlyMonAn : System.Web.UI.Page
    {
        LopDungChung lc = new LopDungChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            loadWeb();
        }
        public void loadWeb()
        {
            string sql = "select * from monan";
            DataTable dt = new DataTable();
            dt = lc.getData(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = string.Format("insert into monan values ('{0}','{1}','{2}','{3}','{4}')",
               txt_tenmon.Text, txt_dongia.Text.Replace(",","."), txt_thanhphan.Text, txt_loai.Text, txt_hinhanh.Text);
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
            string sql = string.Format("update monan set tenmon='{0}',dongia='{1}',thanhphan='{2}',loai='{3}',hinhanh='{4}' where mamon='{5}'",
                txt_tenmon.Text, txt_dongia.Text.Replace(",", "."), txt_thanhphan.Text, txt_loai.Text, txt_hinhanh.Text,txt_mamon.Text);
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
            string sql = string.Format("delete from monan where mamon='{0}'",txt_mamon.Text);
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