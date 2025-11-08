<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.User.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script>
    /*for disappearing alert message*/
    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                </div>
                 <h2>Login</h2>

            </div>
            <div class="row">
                <div class="col-md-6">
                     <div class="from_container">
                         <img id="userLogin" src="../Images/Login.png" alt="" class="img-thumbnail" height="400" width="400" />
                     </div>
                </div>
                <div class="col-md-6">
                    <div class="from_container">
                        &nbsp;
                        &nbsp;
                        <div>
                            <asp:TextBox ID="txtUsername" runat="server" Cssclass="form-control" placeholder="Enter Username"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Username is required" ID="RequiredFieldValidator1" 
                                Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtUsername">
                            </asp:RequiredFieldValidator>
                        </div>
                        &nbsp;
                         <div>
                             <asp:TextBox ID="txtPassword" runat="server" Cssclass="form-control" placeholder="Enter Password" TextMode="Password">
                             </asp:TextBox>
                             <asp:RequiredFieldValidator runat="server" ErrorMessage="Password is required" ID="RequiredFieldValidator4"
                                 Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                         </div>
                        &nbsp;
                        &nbsp;
                        <div class="btn_box">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" Cssclass="btn-success rounded-pill pl-4 pr-4 text-white" 
                                OnClick="btnLogin_Click"/>
                            <span class="pl-3 text-info">New User ? <a href="Registration.aspx" CssClass="badge badge-info " >Register Here...</a></span>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

   </asp:Content>
