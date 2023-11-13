<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

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
                <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="Please enter your Email!"
                    ForeColor="red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email address is invalid!" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                Password
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"
                    placeholder="*****"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="Please enter your password!"
                    ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" class="btn btn-inverse-primary mr-2" OnClick="btnLogin_Click"
                    Text="Login" />
                <asp:Button ID="btnCancle" runat="server" class="btn btn-inverse-dark" Text="Cancel"
                    OnClick="btnCancle_Click" />
            </div>
            <div class="form-group">
                <p>Don't have an account? <a href="Registration.aspx">Register</a></p>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>

        </div>

    </div>
</asp:Content>

