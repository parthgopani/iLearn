
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container mt-5">
        <div class="card mx-auto" style="max-width: 500px;">
            <div class="card-header">
                <h4 class="text-center">Update your Profile</h4>
            </div>
            <div class="card-body">
                
                    <div class="form-group">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Eg: user@iLearn.com"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="Please enter your Email!" ForeColor="red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is invalid!" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                
                <div class="form-group row">
                    <div class="col-sm-6">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ErrorMessage="Please enter your first name!" ForeColor="red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                    </div>
                
            
          <div class="col-sm-6">
    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RfvLastName" runat="server" ErrorMessage="Please enter your last name!"
        ForeColor="red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
</div>
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
    &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RfvGender" runat="server" ErrorMessage="Please select your gender!"
        ForeColor="red" ControlToValidate="RdoGender"></asp:RequiredFieldValidator>
</div>
                <div class="form-group row">

<div class="col-sm-6">
    <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" placeholder="Date of Birth"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your date of birth!"
        ForeColor="red" ControlToValidate="txtDob"></asp:RequiredFieldValidator>
    &nbsp;<br />
    <asp:RegularExpressionValidator ID="RxvDob" runat="server" ControlToValidate="txtDob"
        ErrorMessage="Invalid Date Format" ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$"
        ForeColor="red"></asp:RegularExpressionValidator>
</div>
                    <div class="col-sm-6">
    <asp:TextBox ID="Textcity" runat="server" CssClass="form-control" placeholder="Enter City"></asp:TextBox>

    <asp:RequiredFieldValidator ID="rfvcity" runat="server" ErrorMessage="Please enter your city!"
        ForeColor="red" ControlToValidate="Textcity"></asp:RequiredFieldValidator>
</div>
                    </div>
<div class="form-group">
    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" TextMode="MultiLine"
        placeholder="Address 1"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage="Please enter your adress!"
        ForeColor="Red" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" TextMode="MultiLine"
        placeholder="Address 2"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your address!"
        ForeColor="Red" ControlToValidate="txtAddress2"></asp:RequiredFieldValidator>
</div>




                <div class="form-group text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Update" class="btn btn-primary"  OnClick="btnUpdateProfile_Click"/>
                    <asp:Button ID="btnClear" runat="server" CausesValidation="False" Text="Clear" class="btn btn-secondary" OnClick="btnClear_Click" />
                </div>
                <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</asp:Content>


