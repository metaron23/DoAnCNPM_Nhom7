<%@ Page Title="" Language="C#" MasterPageFile="~/Web_View/MasterPage/MasterNavFull.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DoAnThuongMaiDienTu.Web_View.Contact.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact">
        <div class="link">
            <div class="link-content">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link-btn" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                <span class="slash">/</span>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link-btn btn-active">Contact</asp:LinkButton>
            </div>
        </div>
        <div class="contact_content">
            <div class="contact_contactUs">
                <h3>Contact Us</h3>
                <p>44 Canal Center Plaza #200, Alexandria,</p>
                <p>VA 22314, USA</p>
                <p class="contact_me">TEL: 1.555.836.6767</p>
                <p class="contact_me">MAIL: bettaso@demolink.org</p>
                <p>Want to join the team?</p>
                <p><a href="#" class="contact_me">Apply Today</a></p>
            </div>
            <div class="contact_working">
                <h3>Working hours</h3>
                <p>Mo-Fr 11:00-00:00</p>
                <p>Mo-Fr 11:00-00:00</p>
                <p>Call us at:</p>
                <p class="contact_me">555.999.111</p>
                <button>Make an online reservation</button>
            </div>
        </div>
    </div>
    <div class="contact_map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d30673.148639676765!2d108.22388575000001!3d16.058037400000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1654261335112!5m2!1svi!2s"
            width="100%"
            height="500"
            style="border: 0"
            allowfullscreen=""
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div class="contact">
        <div class="contact_content">
            <div class="contact_touch">
                <h3>Get in touch</h3>
                <p>
                    Bettaso family Restaurant is situated at the very historical heart
            of Alexandria, VA. Our address is well known to locals as the most
            home-like, and delicious place in the city!
                </p>
                <p>
                    Please contact us using the form on the page in regards to any
            questions you might have, or to make a booking with us
                </p>
            </div>
            <div class="contact_form">
                <div class="contact_form_info">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Your name" CssClass="textbox"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Phone" CssClass="textbox" style="width:150px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Email" TextMode="Email" CssClass="textbox" style="width:250px;"></asp:TextBox>             
                </div>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Your message" TextMode="MultiLine" Height="300px"></asp:TextBox>     
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="button" OnClick="Button1_Click"/>           
            </div>
        </div>
    </div>
</asp:Content>
