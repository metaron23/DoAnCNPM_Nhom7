<%@ Page Title="" Language="C#" MasterPageFile="~/Web_View/MasterPage/MasterNavFull.Master" AutoEventWireup="true" CodeBehind="Product_PhanLoai.aspx.cs" Inherits="DoAnThuongMaiDienTu.Web_View.Home.Product_PhanLoai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSSHome.css" rel="stylesheet" />
    <style>
        #LinkButton7 {
            color: red;
        }

        #LinkButton1 {
            color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="link">
            <div class="link-content">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link-btn" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                <span class="slash">/</span>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-btn" OnClick="LinkButton2_Click">Store</asp:LinkButton>
                <span class="slash">/</span>
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="link-btn btn-active" OnClick="LinkButton3_Click">
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label></asp:LinkButton>
            </div>
        </div>
    </div>
    <div class="recommend">
        <div class="recommend_content" style="padding-top: 20px">
            <h2 style="margin-bottom: 50px; font-size: 38px;">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h2>
            <div class="recommend_box">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <div class="recommend_item">
                            <div class="recommend_item_header">
                                <asp:ImageButton ID="ImageButton1" CssClass="image" runat="server" ImageUrl='<%# "/Web_View/Home/images/"+Eval("hinhanh") %>' CommandArgument='<%#Eval("mamon") %>' OnClick="ImageButton1_Click" />
                                <button class="btn_add">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    <asp:Button ID="Button1" runat="server" Text="ADD TO CART" CssClass="btn-cart" CommandArgument='<%#Eval("mamon") %>' OnClick="Button1_Click" /></asp>                                    
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
