<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
        <div class="brand-logo">
            <img src="/images/logo.png" alt="logo">
        </div>
        <h4>Hello! let's get started</h4>
        <h6 class="font-weight-light">Sign in to continue.</h6>
        <div class="body bg-gray">
            <div class="form-group">
                Email
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Eg : user@iLearn.com"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionEmailValidate" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Please Enter Valid Email Address!" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="rfvtxtEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email Required" ForeColor="#CC0000" ValidationGroup="submit1"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                Password
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="*****"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password Required" ForeColor="#CC0000" ValidationGroup="submit1"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnLogin" runat="server" CssClass="btn bg-olive btn-block" OnClick="btnLogin_Click"
                Text="Login" ValidationGroup="submitLogin" />
            <asp:Button ID="btnCancle" runat="server" CssClass="btn bg-olive btn-block" Text="Cancel"
                OnClick="btnCancle_Click" />
            <div class="text-center">
                <p>Don't have an account? <a href="Registration.aspx">Register</a></p>
            </div>
        </div>

        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>


    </div>
</asp:Content>

