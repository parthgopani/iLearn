<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Program.aspx.cs" Inherits="Program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="programForm" runat="server">
        <section class="content-header">
            <h1>Program</h1>
            <ol class="breadcrumb">
                <li><a href="Default.aspx"><i class="fa fa-home"></i>Home</a></li>
                <li class="active">Program</li>
            </ol>

        </section>

        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-body">
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="col-xs-2 box-body">
                                Program Name:
                            </div>
                            <div class="col-xs-10 box-body>">
                                <asp:TextBox ID="txtpname" runat="server" CssClass="form-control" placeholder="Enter Program Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpname"
                                    ErrorMessage="Program Name is Required" ForeColor="Red" ValidationGroup="txt1"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="col-xs-2 box-body">
                                Select Program Coordinator:
                            </div>
                            <div class="col-xs-10 box-body>">
                                <asp:DropDownList ID="prgconame" runat="server" class="btn btn-default dropdown-toggle" data-toggle="dropdown"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="prgconame"
                                    ErrorMessage="Program Coordinator Name is Required" ForeColor="Red" ValidationGroup="txt1"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="box-body pad table-responsive">
                                <div class="rounded-button">
                                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click"
                                        class="btn btn-outline-success btn-sm" ValidationGroup="txt1" />
                                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click"
                                        class="btn btn-outline-primary btn-sm" />
                                    <asp:Button ID="btndelete" runat="server" Text="DELETE" OnClick="btndelete_Click"
                                        class="btn btn-outline-danger btn-sm" />
                                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" class="btn btn-outline-warning btn-sm" />

                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12">
                            <div class="box-body">
                                <asp:HiddenField ID="hdnprogram" runat="server" />
                                <asp:GridView ID="Grdprogram" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                    OnRowCommand="Grdprogram_RowCommand" AllowSorting="True" OnSelectedIndexChanging="Grdprogram_SelectedIndexChanging"
                                    PageSize="15" OnPageIndexChanging="Grdprogram_PageIndexChanging" CssClass="table table-mailbox" HorizontalAlign="Center">

                                    <Columns>
                                        <asp:TemplateField HeaderText="Program">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("P_Id") %>' CommandName="P_Id" CommandArgument='<%# Bind("P_Id") %>'></asp:LinkButton>
                                            </ItemTemplate>

                                            <HeaderStyle BackColor="Gray" BorderColor="Gray"></HeaderStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="p_name" HeaderText="Program name" />
                                        <asp:BoundField DataField="c_name" HeaderText="Coordinator Name" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="true" />
                                    <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                                    <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                                    <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>

