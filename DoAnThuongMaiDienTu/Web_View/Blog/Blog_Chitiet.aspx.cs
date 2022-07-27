using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DoAnThuongMaiDienTu.Web_View.Blog
{
    public partial class Blog_Chitiet : System.Web.UI.Page
    {
        LopChung lc = new LopChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            loadWeb();
        }
        public void loadWeb()
        {
            string sql = "selectBlog";
            string id = Request.QueryString["id"];
            object[] param = { "@id" };
            object[] values = { id };
            DataTable dt = new DataTable();
            dt = lc.dataAdapterPara(sql, param, values);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            sql = "selectAllBlog";
            dt = lc.dataAdapter(sql);
            DataList3.DataSource = dt;
            DataList3.DataBind();
            dt = lc.dataAdapterPara("selectbinhluanblog", param, values);
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Blog/Blog.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Home/Home.aspx");
        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string idblog = btn.CommandArgument;
            Response.Redirect("~/Web_View/Blog/Blog_Chitiet.aspx?id=" + idblog);
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Blog/Blog.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Home/Home.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string idblog = Request.QueryString["id"];
            object[] param = { "@idblog","@name","@tinnhan","@date"};
            object[] values = { idblog ,txt_name.Text,txt_cmt.Text,DateTime.Now.ToString("yyyy-MM-dd")};
            bool check = lc.nonQuery("addCommentNew", param, values);
            if(check == true)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Bình luận thành công!');", true);
                loadWeb();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "thongBao('Bình luận thất bại!');", true);
            }
        }
    }
}