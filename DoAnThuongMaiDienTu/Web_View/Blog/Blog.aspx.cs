using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DoAnThuongMaiDienTu.Web_View.Blog
{
    public partial class Blog : System.Web.UI.Page
    {
        LopChung lc = new LopChung();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql = "selectAllBlog";
            DataTable dt = new DataTable();
            dt = lc.dataAdapter(sql);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            DataList3.DataSource = dt;
            DataList3.DataBind();            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string idblog = btn.CommandArgument;
            Response.Redirect("~/Web_View/Blog/Blog_Chitiet.aspx?id="+ idblog);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string idblog = btn.CommandArgument;
            Response.Redirect("~/Web_View/Blog/Blog_Chitiet.aspx?id=" + idblog);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string idblog = btn.CommandArgument;
            Response.Redirect("~/Web_View/Blog/Blog_Chitiet.aspx?id=" + idblog);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string idblog = btn.CommandArgument;
            Response.Redirect("~/Web_View/Blog/Blog_Chitiet.aspx?id=" + idblog);
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string idblog = btn.CommandArgument;
            Response.Redirect("~/Web_View/Blog/Blog_Chitiet.aspx?id=" + idblog);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_View/Home/Home.aspx");
        }
    }
}