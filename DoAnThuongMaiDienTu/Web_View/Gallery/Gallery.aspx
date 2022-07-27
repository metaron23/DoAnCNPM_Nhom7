<%@ Page Title="" Language="C#" MasterPageFile="~/Web_View/MasterPage/MasterNavFull.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="DoAnThuongMaiDienTu.Web_View.Gallery.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS_Gallery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="link">
            <div class="link-content">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link-btn" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                <span class="slash">/</span>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-btn btn-active">Gallery</asp:LinkButton>
            </div>
        </div>
    </div>
    <div class="atmosphere">
            <h3>ATMOSPHERE MATTERS</h3>
        </div>
    <div class="container">            
        <div class="desc">
            <h2>Our interior
            </h2>
            <p>
                Do you value relaxing, friendly atmosphere? Our interior will sway your mood! The Bettaso restaurant offers two different dining halls (one big and one a bit more intimate), with tables varying in size (for 2, 4 or 8 guests). Additionally we have a wide bar desk with high chairs, a welcoming space for enjoying your drink!
            </p>
        </div>
    </div>
    <div class="gallery">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
            <ItemTemplate>                
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Web_View/Gallery/images/"+Eval("diachi") %>' CssClass="g-img"/>                 
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
