<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Course</h4>
                                <form id="form2" runat="server" class="forms-sample">
                                    <div class="form-group row">
                                        <label for="lblcourse" class="col-sm-2 col-form-label">Course Name:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtcoursename" runat="server" CssClass="form-control" placeholder="Enter Course Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcoursename"
                                                ErrorMessage="Course Name Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblcoursecode" class="col-sm-2 col-form-label">Course Code:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtcoursecode" runat="server" CssClass="form-control" placeholder="Enter Course Code"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcoursecode"
                                                ErrorMessage="Course Code Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblcourse" class="col-sm-2 col-form-label">Select Semester:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpsem" CssClass="form-control" runat="server"
                                                AutoPostBack="false" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpsem"
                                                ErrorMessage="Semester Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click"
                                        ValidationGroup="msg1" class="btn btn-inverse-primary mr-2" />
                                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click"
                                        class="btn btn-inverse-info mr-2" />
                                    <asp:Button ID="btndelete" runat="server" Text="DELETE" OnClick="btndelete_Click"
                                        class="btn btn-inverse-danger mr-2" />
                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-inverse-dark" />
                                    <div class="col-md-12 grid-margin">
                                        <div class="row">
                                            <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <asp:GridView ID="grid_Course" runat="server" AutoGenerateColumns="false" OnRowCommand="sub_rowcmd"
                                                            AllowPaging="True" AllowSorting="true" PageSize="10" CssClass="gridview rounded-gridview"
                                                            HorizontalAlign="Center" OnPageIndexChanging="grid_Course_PageIndexChanging">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Sub Id">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton1" runat="server" Text="<%#Bind('[Course_Id]') %>"
                                                                            CommandName="Course_Id"
                                                                            CommandArgument='<%#Bind("[Course_Id]") %>' ForeColor="Black"
                                                                            Font-Bold="True">
                                                                        </asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Course_Name" HeaderText="Course Name" />
                                                                <asp:BoundField DataField="Course_Code" HeaderText="Course Code" />
                                                                <asp:BoundField DataField="Sem_Name" HeaderText="Semester" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#F7F7F7" Wrap="True" />
                                                            <HeaderStyle BackColor="#F7F7F7" />
                                                            <PagerStyle BackColor="#F7F7F7" />
                                                            <RowStyle BackColor="#F7F7F7" />
                                                        </asp:GridView>
                                                        <asp:HiddenField ID="hdnsem" runat="server" />
                                                        <asp:HiddenField ID="hiddensubid" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

