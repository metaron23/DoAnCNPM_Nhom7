<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="DoAnThuongMaiDienTu.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            width:600px;
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
            padding: 10px;
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
    <asp:Label ID="Label1" runat="server" Text="QUẢN LÝ ĐƠN HÀNG" Style="margin-left: 560px; font-size: 40px; padding-top: 40px; display: block; margin-bottom: -60px;"></asp:Label>
    <div style="height: 100%; width: 80%; margin-left: 12%; display: flex; justify-content: space-between; align-items: center;">

        <div class="form" style="margin-right: 50px;">
            <div class="field">
                <asp:TextBox ID="txt_id" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="mamon" class="label-name">
                    <span class="label-content">ID hoá đơn:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_mamon" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Mã món:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_taikhoan" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Tài khoản:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_soluong" runat="server" CssClass="view_input" TextMode="MultiLine"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Số lượng:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_thanhtien" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Thành tiền</span>
                </label>
            </div>
            <div style="margin-top: 20px;">
                <asp:Button ID="Button3" runat="server" Text="Xoá" CssClass="btn" OnClick="Button3_Click" />
            </div>
        </div>
        <div style="max-height: 500px; overflow-x: hidden; overflow-y: auto;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID hoá đơn" SortExpression="mamon" />
                    <asp:BoundField DataField="mamon" HeaderText="Mã món" SortExpression="tenmon" />
                    <asp:BoundField DataField="taikhoan" HeaderText="Tài khoản" SortExpression="dongia" />
                    <asp:BoundField DataField="soluong" HeaderText="Số lượng" SortExpression="thanhphan" />
                    <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" SortExpression="loai" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <script>
        function thongBao(thongbao) {
            alert(thongbao);
        }
        let trTables = document.querySelectorAll("#ContentPlaceHolder1_GridView1 tr");
        let txt_mamon = document.querySelector("#ContentPlaceHolder1_txt_id");
        let txt_tenmon = document.querySelector("#ContentPlaceHolder1_txt_mamon");
        let txt_thanhphan = document.querySelector(
            "#ContentPlaceHolder1_txt_taikhoan"
        );
        let txt_dongia = document.querySelector("#ContentPlaceHolder1_txt_soluong");
        let txt_loai = document.querySelector("#ContentPlaceHolder1_txt_thanhtien");
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
                    txt_thanhphan.value = this.querySelectorAll("td")[2].innerHTML;
                    txt_dongia.value = this.querySelectorAll("td")[3].innerHTML;
                    txt_loai.value = this.querySelectorAll("td")[4].innerHTML;
                    txt_hinhanh.value = this.querySelector("td img").src.split('/').pop();
                };
            }

        });
    </script>
</asp:Content>
