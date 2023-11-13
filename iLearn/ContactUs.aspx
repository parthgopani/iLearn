<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
        <div class="container">
        <div class="content">
            <div class="left-side">
                <div class="address details">
                    <i class="ti-location-pin"></i>
                    <div class="topic">Address</div>
                    <div class="contactL1">Kitchener</div>
                    <div class="contactL2">Kitchener, Ontario</div>
                </div>

                <div class="email details">
                    <i class="ti-email"></i>
                    <div class="topic">Email</div>
                    <div class="contactL1">support@iLearn.com</div>
                </div>
            </div>
            <div class="right-side">
                <div class="topic-text">Send Us a message </div>
                <p>If you have any questions, please feel free to drop a message.</p>
                <p>• We will contact you with your queries within 48hrs.</p>
                <%--<form id="contactUsForm" runat="server">--%>
                    <div class="form-group row">
                        <label for="lblFirstLastName" class="col-sm-2 col-form-label">Enter Name</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtFirstLastName" runat="server" CssClass="form-control"
                                placeholder="First, Last Name" BackColor="#F0F1F8"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstLastName"
                                ErrorMessage="Your Name Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="lblEmail" class="col-sm-2 col-form-label">Enter Email</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your Email-id" BackColor="#F0F1F8"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtEmail" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Email Required" ForeColor="#CC0000" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionEmailValidate" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Please Enter Valid Email Address!" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="lblComplaint" class="col-sm-2 col-form-label">Enter your Complaint</label>
                        <div class="col-sm-9 message-box">
                            <asp:TextBox ID="txtComplaint" runat="server" CssClass="form-control"
                                placeholder="Enter your Message" TextMode="MultiLine" BackColor="#F0F1F8" Height="100px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtComplaint"
                                ErrorMessage="Please enter your complaint/ message" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="text-center">

                    <asp:Button ID="btnCompSub" runat="server" Text="Send Message" OnClick="btnCompSub_Click"
                        ValidationGroup="msg1" CssClass="btn btn-outline-ilearn" />
                    
                    </div>
                    <div class="lbl text-justify mt-3">
                   <asp:Label ID="compTime" runat="server" Text="" CssClass=""></asp:Label><br />
                    <asp:Label ID="complaintID" runat="server" Text=""></asp:Label>
                        </div>
                <%--</form>--%>
                
                
                
            </div>

        </div>
    </div>
    
</asp:Content>

