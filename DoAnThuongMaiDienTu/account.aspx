<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="DoAnThuongMaiDienTu.account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            width: 600px;
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
    <asp:Label ID="Label1" runat="server" Text="QUẢN LÝ KHÁCH HÀNG" Style="margin-left: 560px; font-size: 40px; padding-top: 40px; display: block; margin-bottom: -60px;"></asp:Label>
    <div style="height: 100%; width: 80%; margin-left: 12%; display: flex; justify-content: space-between; align-items: center;">

        <div class="form" style="margin-right: 50px;">
            <div class="field">
                <asp:TextBox ID="txt_tk" runat="server" CssClass="view_input"></asp:TextBox>
                <label for="mamon" class="label-name">
                    <span class="label-content">Tài khoản:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_email" runat="server" CssClass="view_input" TextMode="Email"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Email:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_diachi" runat="server" CssClass="view_input" TextMode="MultiLine"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Địa chỉ:</span>
                </label>
            </div>
            <div class="field">
                <asp:TextBox ID="txt_sdt" runat="server" CssClass="view_input" TextMode="Number"></asp:TextBox>
                <label for="name" class="label-name">
                    <span class="label-content">Số điện thoại:</span>
                </label>
            </div>
            <div style="margin-top: 20px;">
                <asp:Button ID="Button3" runat="server" Text="Xoá" CssClass="btn" OnClick="Button3_Click" />
            </div>
        </div>
        <div style="max-height: 500px; overflow-x: hidden; overflow-y: auto;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="taikhoan" HeaderText="Tài khoản" SortExpression="taikhoan" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
                    <asp:BoundField DataField="sdt" HeaderText="Số điện thoại" SortExpression="sdt" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <script>
        function thongBao(thongbao) {
            alert(thongbao);
        }
        let trTables = document.querySelectorAll("#ContentPlaceHolder1_GridView1 tr");
        let txt_mamon = document.querySelector("#ContentPlaceHolder1_txt_tk");
        let txt_tenmon = document.querySelector("#ContentPlaceHolder1_txt_email");
        let txt_thanhphan = document.querySelector(
            "#ContentPlaceHolder1_txt_diachi"
        );
        let txt_dongia = document.querySelector(
            "#ContentPlaceHolder1_txt_sdt"
        );
        trTables.forEach((el, index) => {
            if (index == 0) {

            } else {
                el.onclick = function (e) {
                    for (let i = 0; i < trTables.length; i++) {
                        trTables[i].classList.remove("active");
                    }
                    this.classList.add("active");
                    txt_mamon.value = this.querySelectorAll("td")[0].innerHTML;
                    txt_tenmon.value = this.querySelectorAll("td")[1].innerHTML == "&nbsp;" ? "" : this.querySelectorAll("td")[1].innerHTML;
                    txt_thanhphan.value = this.querySelectorAll("td")[2].innerHTML;
                    txt_dongia.value = this.querySelectorAll("td")[3].innerHTML;
                };
            }

        });
    </script>
</asp:Content>
