<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div>
   <table style="width: 80%; height: 424px; font-family: Verdana;
            border-collapse: collapse; background-color: #ffffff;" align="center">
            <tr>
                <td align="center" colspan="3" class="style9">
                    <asp:Label ID="lblHeader" runat="server" Text="Register Here" Font-Bold="True"></asp:Label>
                </td>
            </tr>

                        <tr>
                <td class="style11" align="right" style="">
                    <asp:Label ID="lblEmail" runat="server" Text="E-Mail :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtEmail" runat="server" Style="border-radius: 50px;"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="Please enter your Email!"
                        ForeColor="red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Email address is invalid!" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtFirstName" runat="server" Style="border-radius: 50px;"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ErrorMessage="Please enter your first name!"
                        ForeColor="red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtLastName" runat="server" Style="border-radius: 50px;"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvLastName" runat="server" ErrorMessage="Please enter your last name!"
                        ForeColor="red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                </td>
            </tr>

<tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblGender" runat="server" Text="Gender :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:RadioButtonList ID="RdoGender" runat="server" RepeatDirection="Horizontal" Width="176px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvGender" runat="server" ErrorMessage="Please select your gender!"
                        ForeColor="red" ControlToValidate="RdoGender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblDob" runat="server" Text="Date of Birth :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtDob" runat="server" Style="border-radius: 50px;"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="(dd/mm/yyyy)"></asp:Label>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your date of birth!"
                        ForeColor="red" ControlToValidate="txtDob"></asp:RequiredFieldValidator>
                    &nbsp;<br />
                    <asp:RegularExpressionValidator ID="RxvDob" runat="server" ControlToValidate="txtDob"
                        ErrorMessage="Invalid Date Format" ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$"
                        ForeColor="red"></asp:RegularExpressionValidator>
                </td>
            </tr>

            
            
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblAddress1" runat="server" Text="Address 1:"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtAddress1" runat="server" Style="border-radius: 15px;" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage="Please enter your adress!"
                        ForeColor="Red" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblAddress2" runat="server" Text="Address 2 :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtAddress2" runat="server" Style="border-radius: 15px;" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your address!"
                        ForeColor="Red" ControlToValidate="txtAddress2"></asp:RequiredFieldValidator>
                </td>
            </tr>


        <tr>
     <td class="style11" align="right">
         <asp:Label ID="Labelcity" runat="server" Text="City :"></asp:Label>
     </td>
     <td class="style11" align="left">
         <asp:TextBox ID="Textcity" runat="server" Style="border-radius: 50px;"></asp:TextBox>
     </td>
     <td class="style4" align="left">
         <asp:RequiredFieldValidator ID="rfvcity" runat="server" ErrorMessage="Please enter your city!"
             ForeColor="red" ControlToValidate="Textcity"></asp:RequiredFieldValidator>
     </td>
 </tr>


            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblPassword" runat="server" Text="Password :"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Style="border-radius: 50px;"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="Please enter your password!"
                        ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblConfirmPwd" runat="server" Text="Confirm Pasword:"></asp:Label>
                </td>
                <td class="style11" align="left">
                    <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" Style="border-radius: 50px;"></asp:TextBox>
                </td>
                <td class="style4" align="left">
                    &nbsp;<asp:RequiredFieldValidator ID="RfvCnfrmPwd" runat="server" ErrorMessage="Please enter your password again!"
                        ForeColor="Red" ControlToValidate="txtConfirmPwd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CvCnfmPwd" runat="server" ErrorMessage="Password and Confirm Password didnt matched"
                        ForeColor="Red" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
                </td>
            </tr>

            <td align="center" class="style12">
                &nbsp;
                <asp:Label ID="lblMsg" runat="server" ForeColor="#CC3300"></asp:Label>
            </td>
            <td class="style12">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Style="border-radius: 15px;"/>&nbsp;
                <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click"
                    Text="Clear" Style="border-radius: 15px;"/>
            </td>
            <td align="center" class="style7">
            </td>
            </tr>
        </table>
                       <div class="text-center">
    <p>Already have an account? <a href="Login.aspx">Login</a></p>
</div>

    </div>
</asp:Content>

