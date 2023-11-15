<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Registration.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
        <div class="brand-logo">
            <img src="../../images/logo.png" alt="logo">
        </div>
        <h4>New here? Register here!!!!</h4>
        <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
        <div class="body bg-gray">
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Eg : user@iLearn.com"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="Please enter your Email!"
                    ForeColor="red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email address is invalid!" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ErrorMessage="Please enter your first name!"
                    ForeColor="red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RfvLastName" runat="server" ErrorMessage="Please enter your last name!"
                    ForeColor="red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Gender:</label>
                <div class="col-sm-9">
                    <div class="form-group">
                        <asp:RadioButtonList ID="RdoGender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

                    </div>
                </div>
                <asp:RequiredFieldValidator ID="RfvGender" runat="server" ErrorMessage="Please select your gender!"
                    ForeColor="red" ControlToValidate="RdoGender"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" placeholder="Date of Birth"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your date of birth!"
                    ForeColor="red" ControlToValidate="txtDob"></asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:RegularExpressionValidator ID="RxvDob" runat="server" ControlToValidate="txtDob"
                    ErrorMessage="Invalid Date Format" ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$"
                    ForeColor="red"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" TextMode="MultiLine"
                    placeholder="Address 1"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage="Please enter your adress!"
                    ForeColor="Red" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" TextMode="MultiLine"
                    placeholder="Address 1"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your address!"
                    ForeColor="Red" ControlToValidate="txtAddress2"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="Textcity" runat="server" CssClass="form-control" placeholder="Enter City"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvcity" runat="server" ErrorMessage="Please enter your city!"
                    ForeColor="red" ControlToValidate="Textcity"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"
                    placeholder="Enter Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="Please enter your password!"
                    ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtConfirmPwd" runat="server" CssClass="form-control" TextMode="Password"
                    placeholder="Re-enter Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RfvCnfrmPwd"
                    runat="server" ErrorMessage="Please enter your password again!"
                    ForeColor="Red" ControlToValidate="txtConfirmPwd"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CvCnfmPwd" runat="server" ErrorMessage="Password and Confirm Password didnt matched"
                    ForeColor="Red" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"
                    class="btn btn-inverse-primary mr-2" />
                <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click"
                    Text="Clear" class="btn btn-inverse-dark" />
            </div>
            <div class="form-group">
                <p>Already have an account? <a href="Login.aspx">Login</a></p>
            </div>
            <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
        </div>
    </div>
</asp:Content>

