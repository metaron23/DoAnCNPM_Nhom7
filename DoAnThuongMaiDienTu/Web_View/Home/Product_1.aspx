<%@ Page Title="" Language="C#" MasterPageFile="~/Web_View/MasterPage/MasterNavFull.Master" AutoEventWireup="true" CodeBehind="Product_1.aspx.cs" Inherits="DoAnThuongMaiDienTu.Web_View.Home.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSSHome.css" rel="stylesheet" />
    <style>
        #LinkButton7 {
            color: red;
        }

        #LinkButton1 {
            color: #fff;
        }

        .link-content {
            padding: 20px 0 40px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <div class="container">
                <div class="link">
                    <div class="link-content">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link-btn" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                        <span class="slash">/</span>
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-btn" OnClick="LinkButton2_Click">Store</asp:LinkButton>
                        <span class="slash">/</span>
                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="link-btn" OnClick="LinkButton3_Click" Text='<%#Eval("loai") %>'><%#Eval("loai") %></asp:LinkButton>
                        <span class="slash">/</span>
                        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="link-btn btn-active"><%#Eval("tenmon") %></asp:LinkButton>
                    </div>
                </div>
                <div class="product_1">
                    <div class="left">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/Web_View/Home/images/"+Eval("hinhanh") %>' CssClass="product-img" />
                    </div>
                    <div class="right">
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("tenmon") %>' CssClass="prod-title"></asp:Label><br />
                        <asp:Label ID="Label5" runat="server" Text='<%#"$"+Eval("dongia") %>' CssClass="prod-price"></asp:Label><br />
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("thanhphan") %>' CssClass="prod-desc"></asp:Label><br />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txt_prod"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Text="ADD TO CART" CssClass="btn-prod" CommandArgument='<%#Eval("mamon") %>' OnClick="Button2_Click" /><br />
                        <asp:Label ID="Label7" runat="server" Text="Category:"></asp:Label>
                        <asp:LinkButton ID="LinkButton5" runat="server"><%#Eval("loai") %></asp:LinkButton>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <div class="recommend">
        <div class="recommend_content">
            <h2>Chef Recommends</h2>
            <p>
                Choose a perfect combination of main dish and wine, thanks to our
          Chef’s specials
            </p>
            <div class="recommend_box">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <div class="recommend_item">
                            <div class="recommend_item_header">
                                <asp:ImageButton ID="ImageButton1" CssClass="image" runat="server" ImageUrl='<%# "/Web_View/Home/images/"+Eval("hinhanh") %>' OnClick="ImageButton1_Click" CommandArgument='<%#Eval("mamon") %>' />
                                <button class="btn_add">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    <asp:Button ID="Button1" runat="server" Text="ADD TO CART" CssClass="btn-cart" CommandArgument='<%#Eval("mamon") %>' /></asp>                                    
                                </button>
                            </div>
                            <div class="recommend_item_content">
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("tenmon") %>' CssClass="h3"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%#"$"+Eval("dongia") %>' CssClass="lable"></asp:Label>
                                </div>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("thanhphan") %>' CssClass="p"></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>

        </div>
    </div>
</asp:Content>
