<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Project.User.Profile" %>
<%@ Import Namespace="Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

 <script>
     $(document).ready(function () {
         $('.nav-pills a').click(function () {
             $(this).tab('show'); // Force Bootstrap to activate the tab
         });
     });
 </script>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%
    string imageUrl = Session["imageUrl"].ToString();
    %>

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">

                <h2>User Information</h2>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title mb-4">
                                <div class="d-flex justify-content-start">
                                    <div class="image-container">
                                        
                                       <%-- <img src="<%= Session["imageUrl"] != null ? Session["imageUrl"].ToString() : "default-profile.png" %>" 
                                             id="imgProfile" 
                                             style="width:150px; height:150px;" 
                                             class="img-thumbnail" />--%>
                                        <img src="../Temp/img/client.png" style="width:150px; height:150px;" 
                                            class="img-thumbnail"  />

                                       &nbsp; &nbsp;
                                        <div class="middle pt-2">
                                            <a href="Registration.aspx?id=<%Response.Write(Session["userId"]);%>" class="btn btn-warning">
                                                <i class="fa fa-pencil"></i>Edit Details
                                            </a>
                                        </div>
                                    </div> 

                                    <div class="userData ml-3">
                                       <br />
                                        <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold">
                                            <a href="javascript:void(0);"><%Response.Write(Session["name"]); %></a>
                                        </h2> 
                                       

                                        <h6 class="d-block">
                                            <asp:Label ID="lblUsername" runat="server" ToolTip="Unique Username">
                                                @<%Response.Write(Session["username"]); %>
                                            </asp:Label>
                                        </h6>
                                       
                                        <h6 class="d-block">
                                            <asp:Label ID="lblCreateDate" runat="server" ToolTip="Account Created On">
                                                <%Response.Write(Session["createDate"]); %>
                                            </asp:Label>
                                        </h6>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                   <%-- <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" 
                                       aria-controls="basicInfo" aria-selected="true">Basic Info</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab" 
                                       aria-controls="connectedServices" aria-selected="false">Purchase History</a>
                                        </li>
                                    </ul>--%>
                                     <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                                         <li class="nav-item">
                                             <a data-toggle="tab" href="#basicInfo" class="nav-link active">
                                                 <i class="fa fa-social"></i>Basic Info
                                             </a>
                                         </li>
                                         <li class="nav-item">
                                             <a data-toggle="tab" href="#connectedServices" class="nav-link">
                                                 <i class="fa fa-money mr-2"></i>Purchase History
                                             </a>
                                         </li>
                                     </ul>

                                    <div class="tab-content ml-1" id="myTabContent">
                                        <div class="container tab-pane active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                            <asp:Repeater ID="rUserProfile" runat="server">
                                                <ItemTemplate>
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight:bold;">Full Name</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Name") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight:bold;">Username</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Username") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight:bold;">Mobile No.</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Mobile") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight:bold;">Email Addr.</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Email") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight:bold;">Post Code</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("PostCode") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight:bold;">Address</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Address") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>

                                        <div id="connectedServices" class="container tab-pane fade" role="tabpanel" aria-labelledby="ConnectedServices-tab">
                                            <asp:Repeater ID="rPurchaseHistory" runat="server" OnItemDataBound="rPurchaseHistory_ItemDataBound1">
                                                <ItemTemplate>
                                                    <div class="container">
                                                        <div class="row pt-1 pb-1" style="background-color: lightgray">
                                                            <div class="col-4">
                                                                <span class="badge badge-pill badge-dark text-white">
                                                                    <%# Eval("SrNo") %>
                                                                </span>
                                                                Payment Mode: <%# Eval("PaymentMode").ToString() == "cod" ? "Cash on Delivery" : Eval("PaymentMode").ToString().ToUpper() %>
                                                            </div>
                                                            <div class="col-6">
                                                                <%# string.IsNullOrEmpty(Eval("CardNo").ToString()) ? " " : "Card No: " + Eval("CardNo") %>
                                                            </div>
                                                            <div class="col-2" style="text-align:end">
                                                                <a href="invoice.aspx?id=<%# Eval("PaymentId") %>"> <i class="fa fa-download mr-2"></i>Invoice</a>
                                                            </div>
                                                        </div>

                                                        <asp:HiddenField ID="hdnPaymentId" runat="server" Value='<%# Eval("PaymentId") %>'/>

                                                        <asp:Repeater ID="rOrders" runat="server">
                                                            <HeaderTemplate>
                                                                <table class="table data-table-export table-responsive-sm table-bordered table-hover">
                                                                    <thead class="bg-dark text-white">
                                                                        <tr>
                                                                            <th>Product Name</th>
                                                                            <th>Unit Price</th>
                                                                            <th>Qty</th>
                                                                            <th>Total Price</th>
                                                                            <th>OrderId</th>
                                                                            <th>Status</th>
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
                                                                        <asp:Label ID="lblPrice" runat="server" Text='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? " " : "Rs. " + Eval("Price") %>'></asp:Label>
                                                                    </td>

                                                                    <td>
                                                                        <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                                                    </td>

                                                                    <td>
                                                                        <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("TotalPrice") %>'></asp:Label>
                                                                    </td>

                                                                    <td>
                                                                        <asp:Label ID="lblOrderNo" runat="server" Text='<%# Eval("OrderNo") %>'></asp:Label>
                                                                    </td>

                                                                    <td>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                </tbody>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </section>
</asp:Content>
