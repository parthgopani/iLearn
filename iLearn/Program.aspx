<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="Program.aspx.cs" Inherits="Program" %>

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
                                <h4 class="card-title">Program</h4>
                                <form id="programForm" runat="server">
                                    <div class="form-group row">
                                        <label for="lbltxtpname" class="col-sm-2 col-form-label">Program Name:</label>

                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtpname" runat="server" CssClass="form-control" placeholder="Enter Program Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpname"
                                                ErrorMessage="Program Name is Required" ForeColor="Red" ValidationGroup="txt1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="lblprgconame" class="col-sm-2 col-form-label">Program Coordinator:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="prgconame" runat="server" CssClass="form-control" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="prgconame"
                                                ErrorMessage="Program Coordinator Name is Required" ForeColor="Red" ValidationGroup="txt1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click"
                                        class="btn btn-inverse-primary mr-2" ValidationGroup="txt1" />
                                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click"
                                        class="btn btn-inverse-info mr-2" />
                                    <asp:Button ID="btndelete" runat="server" Text="DELETE" OnClick="btndelete_Click"
                                        class="btn btn-inverse-danger mr-2" />
                                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" OnClick="btncancel_Click"
                                        class="btn btn-inverse-dark" />

                                    <div class="col-md-12 grid-margin">
                                        <div class="row">
                                            <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <asp:HiddenField ID="hdnprogram" runat="server" />
                                                        <asp:GridView ID="Grdprogram" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                                            OnRowCommand="Grdprogram_RowCommand" AllowSorting="True" OnSelectedIndexChanging="Grdprogram_SelectedIndexChanging"
                                                            PageSize="15" OnPageIndexChanging="Grdprogram_PageIndexChanging" CssClass="gridview rounded-gridview"
                                                            HorizontalAlign="Center">

                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Program">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("Program_Id") %>'
                                                                            CommandName="Program_Id" CommandArgument='<%# Bind("Program_Id") %>' ForeColor="Black"
                                                                            Font-Bold="True"></asp:LinkButton>
                                                                    </ItemTemplate>

                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Program_Name" HeaderText="Program name" />
                                                                <asp:BoundField DataField="f_name" HeaderText="Program Coordinator Name" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#F7F7F7" Wrap="True" />
                                                            <HeaderStyle BackColor="#F7F7F7" />
                                                            <PagerStyle BackColor="#F7F7F7" />
                                                            <RowStyle BackColor="#F7F7F7" />
                                                        </asp:GridView>
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

