<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Project.User.Cart" %>
<%@ Import Namespace="Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-content-end">
                     <asp:Label ID="lblMsg" runat="server" Visible="False" ></asp:Label>
                </div>
                <h2>Your Shoping Cart</h2>
            </div>
        </div>
        <div class="container">
            <asp:Repeater ID="rCartItem" runat="server" OnItemCommand="rCartItem_ItemCommand" OnItemDataBound="rCartItem_ItemDataBound">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Unit Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>              
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>

                        <td>
                            <img width="60" src="<%# Utils.GetImageUrl(Eval("ImageUrl")) %>" alt=" " />
                        </td>

                        <td>
                            Rs.<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            <asp:HiddenField ID="hndProductId" runat="server" Value='<%# Eval("ProductId") %>' />
                            <asp:HiddenField ID="hndQuantity" runat="server" Value='<%# Eval("Qty") %>'  />
                            <asp:HiddenField ID="hndPrdQuantity" runat="server" Value='<%# Eval("PrdQty") %>'  />
                        </td>

                        <td>
                            <div class="product-detail-option">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Text='<%# Eval("Qty") %>'>
                                        </asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revQuantity" runat="server" ErrorMessage="*"
                                            ForeColor="Red" Font-Size="Small" ValidationExpression="[1-9]*" ControlToValidate="txtQuantity"
                                            Display="Dynamic" SetFocusOnError="true" EnableClientScript="true">
                                       </asp:RegularExpressionValidator>

                                    </div>
                                </div>
                            </div>
                        </td>

                        <td>
                             Rs.<asp:Label ID="lblTotalPrice" runat="server" ></asp:Label>
                        </td>

                       

                        <td>
                        <asp:LinkButton ID="lbDelete" runat="server" Text="Remove" CommandName="remove" CssClass="badge bg-danger"
                            CommandArgument='<%# Eval("ProductId") %>' 
                            OnClientClick="return confirm('Do you want to remove this item from cart?');" >
                            <i class="fa fa-close"></i> <i class="fa-close"></i>
                        </asp:LinkButton>
                            </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr>
                        <td colspan = "3"></td>
                        <td class="pl-lg-5">
                            <b>Grand Total:- </b>
                        </td>

                        <td>Rs.<% Response.Write(Session["grandTotalPrice"]); %></td>
                        <td></td>
                    </tr>
                    <tr>
                        &nbsp;&nbsp;
                        <td colspan="2" class="continue_btn">
                            <a href="Product.aspx" class="btn btn-info"> <i class="fa fa-arrow-circle-left mr-2"></i>Continue Shopping</a>
                        </td>
                        <td>
                            <asp:LinkButton ID="lbUpdateCart" runat="server" CommandName="updateCart" CssClass="btn btn-warning">
                                <i class="fa fa-refresh mr-2"></i>Update Cart
                            </asp:LinkButton>
                        </td>&nbsp; &nbsp;  &nbsp; &nbsp;
                        <br />
                        <td>
                             <asp:LinkButton ID="lbCheckOut" runat="server" CommandName="checkOut" CssClass="btn btn-success">
                                CheckOut <i class="fa fa-arrow-circle-right mr-2"></i> 
                            </asp:LinkButton>
                            &nbsp;&nbsp;
                                <a href="Payment.aspx" CssClass="badge badge-info " >Payment Here...</a>
                        </td>
                    </tr>
                        </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </section>
</asp:Content>

