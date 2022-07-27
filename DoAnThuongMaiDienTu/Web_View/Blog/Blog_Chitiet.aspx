<%@ Page Title="" Language="C#" MasterPageFile="~/Web_View/MasterPage/MasterNavFull.Master" AutoEventWireup="true" CodeBehind="Blog_Chitiet.aspx.cs" Inherits="DoAnThuongMaiDienTu.Web_View.Blog.Blog_Chitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Blog1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="link">
            <div class="link-content">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link-btn" OnClick="LinkButton1_Click1">Home</asp:LinkButton>
                <span class="slash">/</span>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-btn" OnClick="LinkButton2_Click1">Blog</asp:LinkButton>
                <span class="slash">/</span>
                <asp:Label ID="Label4" runat="server" Text="Our secrets of most delicious meat in the world!" CssClass="btn-active"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="left">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("tieude") %>' CssClass="item-header"></asp:LinkButton><br />
                        <div class="info">
                            By<asp:LinkButton ID="LinkButton4" runat="server" Text='<%# Eval("nguoidang") %>' CssClass="item-inf"></asp:LinkButton>
                            In<asp:LinkButton ID="LinkButton5" runat="server" Text='<%# Eval("chude") %>' CssClass="item-inf"></asp:LinkButton>
                            Posted
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("thoigian") %>' CssClass="item-inf-l"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("soluong") %>'></asp:Label>
                            Commen(s)
                        </div>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "~/Web_View/Blog/images/"+Eval("hinhanh") %>' CssClass="item-img" /><br />
                        <h2>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("tieudedu") %>' CssClass="title-post"></asp:Label></h2>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("noidungdu") %>' CssClass="content-post"></asp:Label>

                    </ItemTemplate>
                </asp:DataList>
                <div class="comment">
                    <h3>Leave a Reply</h3>
                    <p>Your email address will not be published. Required fields are marked *</p>
                    Comments*<br />
                    <asp:TextBox ID="txt_cmt" runat="server" TextMode="MultiLine" CssClass="cmt-content"></asp:TextBox><br />
                    Name<br />
                    <asp:TextBox ID="txt_name" runat="server" CssClass="cmt-name"></asp:TextBox><br />
                    <asp:Button ID="Button3" runat="server" Text="Submit" CssClass="btn-submit" OnClick="Button3_Click" />
                    <asp:HiddenField ID="HiddenField1" runat="server" Value="Hình ảnh"/>
                </div>
                <div class="cmt-view">
                    <div class="cmt-header">
                        Comment:
                    </div>
                    <asp:DataList ID="DataList2" runat="server">
                        <ItemTemplate>
                            <div class="cmt-view-item">
                                Người đánh giá:
                                <asp:Label runat="server" Text='<%#Eval("name") %>' CssClass="cmt-user"></asp:Label><br />
                                <asp:Label runat="server" Text='<%#Eval("tinnhan") %>' CssClass="cmt-con"></asp:Label><br />
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("thoigiannhan") %>' CssClass="cmt-date"></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>

            </div>
            <div class="right">
                <div class="search">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="16px" Height="36px" Width="300px" CssClass="search-tb" TextMode="Search"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Search" CssClass="search-btn" />
                </div>
                <div class="tree-link">
                    <h2>RECENT POSTS
                    </h2>
                    <asp:DataList ID="DataList3" runat="server" OnSelectedIndexChanged="DataList3_SelectedIndexChanged">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton6" runat="server" CssClass="link" OnClick="LinkButton6_Click" CommandArgument='<%# Eval("idblog") %>'><%#Eval("tieude") %></asp:LinkButton>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
