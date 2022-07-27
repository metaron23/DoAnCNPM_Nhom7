<%@ Page Title="" Language="C#" MasterPageFile="~/Web_View/MasterPage/MasterNavFull.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DoAnThuongMaiDienTu.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSSHome.css" rel="stylesheet" />
</asp:Content>    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
            <div class="header_title">
                <h4>The most praised gourmet restaurant</h4>
                <h3>IN THE HEART OF WASHINGTON</h3>
                <p>A place where food and coziness compliment each other.</p>
                <p>Call<span>(555)123-4567</span></p>
                <asp:Button ID="btn_booking" runat="server" Text="Book Online" CssClass="button1" OnClick="btn_booking_Click" />
            </div>
        </div>
    <div class="prize">
        <div class="items">
            <div class="items-img">
                <img width="80" height="80" src="images/icon_prize1.jpg" alt="img">
            </div>
            <div class="items-header">
                <p>
                    Open Table Dinners
                </p>
            </div>
            <div class="items-star">
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
            </div>
        </div>
        <div class="items">
            <div class="items-img">
                <img width="80" height="80" src="images/icon-prize2.jpg" alt="img">
            </div>
            <div class="items-header">
                <p>
                    Open Table Dinners
                </p>
            </div>
            <div class="items-star">
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
            </div>
        </div>
        <div class="items">
            <div class="items-img">
                <img width="80" height="80" src="images/icon-prize3.jpg" alt="img">
            </div>
            <div class="items-header">
                <p>
                    Open Table Dinners
                </p>
            </div>
            <div class="items-star">
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
            </div>
        </div>
        <div class="items">
            <div class="items-img">
                <img width="80" height="80" src="images/icon-prize4.jpg" alt="img">
            </div>
            <div class="items-header">
                <p>
                    Open Table Dinners
                </p>
            </div>
            <div class="items-star">
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
                <i class="fa-solid fa-star" style="color: goldenrod"></i>
            </div>
        </div>
    </div>
    <div class="home_mix">
        <div class="home_mix_content">
            <div class="home_mix_title">
                <h3>A mix of traditional and modern cuisine</h3>
                <p class="home_mix_weight">
                    While we stay true to the traditional recipes and the relaxed
            atmosphere, our restaurant also aspires to constantly add
            fusion-style.
                </p>
                <p>
                    “Bettaso restaurant is just like life: a working mix of old and new
            approaches, but in culinary business.”
                </p>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ABOUT US</asp:LinkButton>
            </div>
            <p class="home_mix_desc">
                Error validating access token: The session has been invalidated
          because the user changed their password or Facebook has changed the
          session for security reasons.
            </p>
        </div>
    </div>
    <div class="poster">
        <div class="poster_box">
            <img src="images/postcard-1.jpg" />
            <div class="poster_centent">
                <h2>starters</h2>
                <p>
                    The start of any meal is so important... So brace your appetite,
            while waiting for your main course. Our diverse and delicious
            appetizers will help you with that!...
                </p>
            </div>
        </div>
        <div class="poster_box">
            <img src="images/postcard-2.jpg" />
            <div class="poster_centent">
                <h2>Main Courses</h2>
                <p>
                    Bettaso's menu knows no borders and nationalities. At the core of
            our main courses roaster, we have the idea of a cosmopolitan,
            contemporary cuisine. So whether you'll pick a meat, fish or
            vegetarian main course, be sure that it will be universally good!...
                </p>
            </div>
        </div>
        <div class="poster_box">
            <img src="images/postcard-3.jpg" />
            <div class="poster_centent">
                <h2>Dessert</h2>
                <p>
                    That sweet taste of a dessert at the end of the meal... If you look
            forward to it too, then you're at the right place! Our menu has
            prolific choice of desserts. It can make even the prolific sweet
            tooth person happy! ...
                </p>
            </div>
        </div>
        <div class="poster_box">
            <img src="images/postcard-4.jpg" />
            <div class="poster_centent">
                <h2>Drinks</h2>
                <p>
                    Refresh yourself while enjoying a flavorsome dinner or a lunch at
            our place. We at the Bettaso offer different beverages as well as
            spirits, and liquors!...
                </p>
            </div>
        </div>
    </div>
    <div class="carousel_box">
        <div class="carousel_box_title">
            <h2>What people are saying about our restaurant</h2>
            <p>
                Anyone, who visits our place leaves us well fed and in a great mood!
            </p>
        </div>
        <div id="carouselId" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselId" data-slide-to="0" class="active"></li>
                <li data-target="#carouselId" data-slide-to="1"></li>
                <li data-target="#carouselId" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <div class="caroursel-people">
                        The prices are as good as the menu! Each time I spend less money,
              than anywhere else and get a fresh, tasty, homemade dinner!
                    </div>
                    <img src="images/testimonials-1.jpg" />
                    <h2>Leah</h2>
                </div>
                <div class="carousel-item">
                    <div class="carousel-people">
                        I’ve been eating their business lunches for the past 7 years. Not
              even once have I had any unpleasant experience. And the dishes
              always taste fresh and good!
                    </div>
                    <img src="images/testimonials-2.png" />
                    <h2>Afred</h2>
                </div>
                <div class="carousel-item">
                    <div class="carousel-people">
                        My friends, who go here every week highly recommended this place
              to me. Now, I visit it each day after work, though it takes me 5
              more minutes to walk. But it’s totally worth it!
                    </div>
                    <img src="images/testimonials-3.jpg" />
                    <h2>Alice</h2>
                </div>
            </div>
        </div>
    </div>
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
                                <asp:ImageButton ID="ImageButton1" CssClass="image" runat="server" ImageUrl='<%# "/Web_View/Home/images/"+Eval("hinhanh") %>' OnClick="ImageButton1_Click" CommandArgument='<%#Eval("mamon") %>'/>
                                <button class="btn_add">
                                    <i class="fa-solid fa-cart-plus"></i>
                                    <asp:Button ID="Button1" runat="server" Text="ADD TO CART" CssClass="btn-cart" OnClick="Button1_Click" CommandArgument='<%#Eval("mamon") %>' /></asp>                                    
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
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </div>

        </div>
    </div>
    <div class="looking">
        <div class="looking_content">
            <h4>Looking for a gourmet experience?</h4>
            <h3>We have it all here!</h3>
            <p>
                The team that works at our kitchen, values diversity. We can offer you
          a traditional dish with nouvelle ingredients!
            </p>
            <h4 class="looking_author">Mr. Simon Wicked</h4>
        </div>
    </div>
    <div class="home_1">
        <div class="home_1_content">
            <h3>Do you value relaxing, friendly atmosphere?</h3>
            <h4>Our interior will sway your mood!</h4>
            <p>
                The Bettaso restaurant offers a cozy, home-like atmosphere to help you
          enjoy your dinner and have a peace of mind… We assembled a strong team
          of professionals, all of whom aspire to constantly excel and step it
          up!!
            </p>
            <asp:Button ID="Button2" runat="server" Text="GALLERY" CssClass="button2" OnClick="Button2_Click"/>
        </div>
    </div>
    <iframe
        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d30673.148639676765!2d108.22388575000001!3d16.058037400000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1654261335112!5m2!1svi!2s"
        width="100%"
        height="400px"
        style="border: 0"
        allowfullscreen=""
        loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"></iframe>
    <script
        src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script>
        let buttonAdds = document.querySelectorAll(".btn_add");
        let cart_item = document.querySelectorAll(".recommend_item");
        buttonAdds.forEach((el) => {
            el.addEventListener("click", function () {
                el.querySelector("i").classList.add("fa-check");
            });
        });
        cart_item.forEach((el) => {
            el.addEventListener("mouseleave", function () {
                this.querySelector("i").classList.remove("fa-check");
            });
        });        
    </script>
</asp:Content>
