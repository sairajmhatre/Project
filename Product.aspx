<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Project.User.Product" %>

<%@ Import Namespace="Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <!-- Product Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                 <div class="align-self-end">
                     <asp:Label ID="lblMsg" runat="server" Visible="False" ></asp:Label>
                 </div>
                <p class="section-title bg-white text-center text-primary px-3">Our Products</p>
                <h1 class="mb-5">Our Dairy Products For Healthy Living</h1>
            </div>

            <ul class="filters_menu">
                <li class="active" data-filter="*">All</li>
                <asp:Repeater ID="rCategory" runat="server" >
                    <ItemTemplate>
                        <%--<li data-filter=".<%# Regex.Replace(Eval("Name").ToString().ToLower(),@"\s", "") %>">
                            data-id="<%# Eval("CategoryId") %>"   <%# Eval("Name") %></li>--%>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

            <div class="row gx-4">

                 <asp:Repeater 
                     ID="rProduct" runat="server" OnItemCommand="rProduct_ItemCommand">
                 <ItemTemplate>
                     <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp <%# Eval("CategoryName").ToString().ToLower() %>" data-wow-delay="0.1s">
                     
                         <div class="product-item">
                         
                             <div class="position-relative">
                             
                                 <img class="img-fluid" src="<%# Utils.GetImageUrl(Eval("ImageURL")) %>" alt="" height="200" width="300">
                                 <div class="product-overlay">
                                     <asp:LinkButton ID="lbAddToCart" runat="server" CommandName="addToCart"
                                         CommandArgument='<%# Eval("ProductId") %>' CssClass="btn btn-square btn-secondary rounded-circle m-1">
                                         <i class="bi bi-cart"></i>
                                     </asp:LinkButton>
                                 </div>
                             </div>
                             <div class="text-center p-4">
                                 <a class="d-block h5" href=""> <%# Eval("Name") %> </a>
                                 <p> <%# Eval("Description") %> </p>
                                 <%--<span class="text-decoration-line-through">$19.00</span>--%>
                                 <span class="text-primary me-1 bg-black">Rs. <%# Eval("Price") %> </span>
                             </div>
                         </div>
                     </div>
                 </ItemTemplate>
             </asp:Repeater>



               <%-- <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="product-item">
                        <div class="position-relative">
                            <img class="img-fluid" src="img/product-1.jpg" alt="">
                            <div class="product-overlay">
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-link"></i></a>
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center p-4">
                            <a class="d-block h5" href="">Pure Milk</a>
                            <span class="text-primary me-1">$19.00</span>
                            <span class="text-decoration-line-through">$29.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="product-item">
                        <div class="position-relative">
                            <img class="img-fluid" src="img/product-2.jpg" alt="">
                            <div class="product-overlay">
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-link"></i></a>
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center p-4">
                            <a class="d-block h5" href="">Fresh Meat</a>
                            <span class="text-primary me-1">$19.00</span>
                            <span class="text-decoration-line-through">$29.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="product-item">
                        <div class="position-relative">
                            <img class="img-fluid" src="img/product-3.jpg" alt="">
                            <div class="product-overlay">
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-link"></i></a>
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center p-4">
                            <a class="d-block h5" href="">Dairy Products</a>
                            <span class="text-primary me-1">$19.00</span>
                            <span class="text-decoration-line-through">$29.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="product-item">
                        <div class="position-relative">
                            <img class="img-fluid" src="img/product-4.jpg" alt="">
                            <div class="product-overlay">
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-link"></i></a>
                                <a class="btn btn-square btn-secondary rounded-circle m-1" href=""><i class="bi bi-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center p-4">
                            <a class="d-block h5" href="">Organic Food</a>
                            <span class="text-primary me-1">$19.00</span>
                            <span class="text-decoration-line-through">$29.00</span>
                        </div>
                    </div>
                </div>--%>


            </div>
        </div>
    </div>
    <!-- Product End -->

</asp:Content>
