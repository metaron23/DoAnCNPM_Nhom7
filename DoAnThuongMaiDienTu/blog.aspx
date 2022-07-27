<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="DoAnThuongMaiDienTu.blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .cont > div{
            width:2000px;
            height:500px;
            overflow:auto;
        }
        table {
            height: 100%;
            width:100%;
        }
        td,th{
            width:100%;
        }
        table, td, th {
            border: 2px solid #79a3ef;
        }

        tr:first-child {
            cursor: text;
        }

        tr {
            cursor: pointer;
        }

        td, th {
            padding: 2px;
            height: 20px;
            width: auto;
        }

            td:first-child {
                text-align: center;
            }

        .img {
            width: 100%;
            height: 50px;
        }

        .btn {
            padding: 10px;
            border: none;
            background-color: #ec495e;
            color: #fff;
            border-radius: 4px;
            margin-right: 10px;
            width: 80px;
            height: 45px;
        }

            .btn:hover {
                cursor: pointer;
                opacity: 0.8;
            }

        .txt {
            width: 90%;
            height: 90%;
            border: none;
            outline: none;
        }

        .form {
            width: 30%;
            overflow: hidden;
        }

        .field {
            position: relative;
            height: 50px;
        }

            .field + .field {
                margin-top: 10px;
            }

        .form .view_input {
            width: 100%;
            height: 100%;
            color: #595f6e;
            border: none;
            outline: none;
            padding-top: 20px;
        }

        .label-name {
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            border-bottom: 1px solid black;
        }

            .label-name::after {
                content: "";
                left: 0px;
                bottom: -1px;
                width: 100%;
                height: 100%;
                position: absolute;
                border-bottom: 3px solid #5fa8d3;
                transition: transform 0.3s ease;
                transform: translateX(-100%);
            }

        .label-content {
            position: absolute;
            bottom: 5px;
            left: 0;
            transition: all 0.3s ease;
        }

        .form .view_input:focus + .label-name .label-content,
        .form .view_input:valid + .label-name .label-content {
            transform: translateY(-150%);
            font-size: 14px;
            color: #5fa8d3;
        }

        .form .view_input:focus + .label-name::after,
        .form .view_input:valid + .label-name::after {
            transform: translateX(0);
        }

        .active {
            background-color: #ec495e;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="QUẢN LÝ BLOG" Style="margin-left: 560px; font-size: 40px; padding-top: 40px; display: block; margin-bottom: -60px;"></asp:Label>
    <div style="height: 100%; width: 80%; margin-left: 12%; display: flex; justify-content: space-between; align-items: center;">

        <div class="form" style="margin-right: 50px;">
            <div class="field">
                <asp:TextBox ID="txt_idblog" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="mamon" class="label-name">
                    <span class="label-content">ID blog:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_tieude" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Tiêu đề:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_chude" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Chủ đề:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_ndngan" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Nội dung ngắn:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_tieudedu" runat="server" CssClass="view_input" TextMode="MultiLine"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Tiểu đề đủ:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_nddu" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Nội dung đủ:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_hinhanh" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Hình ảnh:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_nguoidang" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Người đăng:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_thoigian" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Thời gian:</span>
                </label>
            </div>
            <div style="margin-top: 20px;">
                <asp:Button ID="Button1" runat="server" Text="Thêm" CssClass="btn" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Sửa" CssClass="btn" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Xoá" CssClass="btn" OnClick="Button3_Click" />
            </div>
        </div>
        <div style="max-height: 500px; overflow-x: auto; overflow-y: auto;max-width:600px;" class="cont">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="idblog" HeaderText="ID blog" SortExpression="mamon" />
                    <asp:BoundField DataField="tieude" HeaderText="Tiêu đề" SortExpression="tenmon" />
                    <asp:BoundField DataField="chude" HeaderText="Chủ đề" SortExpression="dongia" />
                    <asp:BoundField DataField="noidungngan" HeaderText="Nội dung ngắn" SortExpression="thanhphan" />
                    <asp:BoundField DataField="tieudedu" HeaderText="Tiêu đề đủ" SortExpression="loai" />
                    <asp:BoundField DataField="noidungdu" HeaderText="Nội dung đủ" SortExpression="loai" />
                    <asp:TemplateField HeaderText="Hình ảnh">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/Web_View/Blog/images/"+Eval("hinhanh") %>' style="width:100px;"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="nguoidang" HeaderText="Người đăng" SortExpression="loai" />
                    <asp:BoundField DataField="thoigian" HeaderText="Thời gian" SortExpression="loai" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <script>
        function thongBao(thongbao) {
            alert(thongbao);
        }
        let trTables = document.querySelectorAll("#ContentPlaceHolder1_GridView1 tr");
        let txt_mamon = document.querySelector("#ContentPlaceHolder1_txt_idblog");
        let txt_tenmon = document.querySelector("#ContentPlaceHolder1_txt_tieude");
        let txt_thanhphan = document.querySelector(
            "#ContentPlaceHolder1_txt_chude"
        );
        let txt_dongia = document.querySelector("#ContentPlaceHolder1_txt_ndngan");
        let txt_loai = document.querySelector("#ContentPlaceHolder1_txt_tieudedu");
        let txt_nddu = document.querySelector("#ContentPlaceHolder1_txt_nddu");
        let txt_hinhanh = document.querySelector("#ContentPlaceHolder1_txt_hinhanh");
        let txt_nguoidang = document.querySelector("#ContentPlaceHolder1_txt_nguoidang");
        let txt_thoigian = document.querySelector("#ContentPlaceHolder1_txt_thoigian");
        trTables.forEach((el, index) => {
            if (index == 0) {

            } else {
                el.onclick = function (e) {
                    for (let i = 0; i < trTables.length; i++) {
                        trTables[i].classList.remove("active");
                    }
                    this.classList.add("active");
                    txt_mamon.value = this.querySelectorAll("td")[0].innerHTML;
                    txt_tenmon.value = this.querySelectorAll("td")[1].innerHTML;
                    txt_dongia.value = this.querySelectorAll("td")[2].innerHTML;
                    txt_thanhphan.value = this.querySelectorAll("td")[3].innerHTML;
                    txt_loai.value = this.querySelectorAll("td")[4].innerHTML;
                    txt_nddu.value = this.querySelectorAll("td")[5].innerHTML;
                    txt_hinhanh.value = this.querySelector("td img").src.split('/').pop();
                    txt_nguoidang.value = this.querySelectorAll("td")[7].innerHTML;
                    txt_thoigian.value = this.querySelectorAll("td")[8].innerHTML;
                };
            }
        });
    </script>
</asp:Content>
