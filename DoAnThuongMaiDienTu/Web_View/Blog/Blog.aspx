<%@ Page Title="" Language="C#" MasterPageFile="~/Web_View/MasterPage/MasterNavFull.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="DoAnThuongMaiDienTu.Web_View.Blog.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Blog1.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="link">
            <div class="link-content">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link-btn" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                <span class="slash">/</span>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-btn btn-active">Blog</asp:LinkButton>
            </div>
        </div>
        <div class="row">
            <div class="left">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("tieude") %>' CssClass="item-header" CommandArgument='<%# Eval("idblog") %>' OnClick="LinkButton3_Click"></asp:LinkButton><br />
                        <div class="info">
                            By<asp:LinkButton ID="LinkButton4" runat="server" Text='<%# Eval("nguoidang") %>' CssClass="item-inf"></asp:LinkButton>
                            In<asp:LinkButton ID="LinkButton5" runat="server" Text='<%# Eval("chude") %>' CssClass="item-inf"></asp:LinkButton>
                            Posted
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("thoigian") %>' CssClass="item-inf-l"></asp:Label>
                        </div>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "~/Web_View/Blog/images/"+Eval("hinhanh") %>' CssClass="item-img" CommandArgument='<%# Eval("idblog") %>' OnClick="ImageButton1_Click"/><br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("noidungngan") %>' CssClass="item-content"></asp:Label>
                        <div class="item-btn">
                            <div class="btn-chat">
                                <i class="fa-solid fa-comment"></i>
                                <asp:Button ID="Button3" runat="server" Text='<%# Eval("soluong") %>' class="cmt-numb" OnClick="Button3_Click" CommandArgument='<%# Eval("idblog") %>'/>
                            </div>
                            <div>
                                <asp:Button ID="Button2" runat="server" Text="More" CssClass="btn-more" OnClick="Button2_Click" CommandArgument='<%# Eval("idblog") %>'/>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="right">
                <div class="search">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="16px" Height="36px" Width="300px" CssClass="search-tb"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Search" CssClass="search-btn" />
                </div>
                <div class="tree-link">
                    <h2>RECENT POSTS
                    </h2>
                    <asp:DataList ID="DataList3" runat="server">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton6" runat="server" CssClass="link" CommandArgument='<%# Eval("idblog") %>' OnClick="LinkButton6_Click"><%#Eval("tieude") %></asp:LinkButton>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
