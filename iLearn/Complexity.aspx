<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="Complexity.aspx.cs" Inherits="Complexity" %>

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
                                <h4 class="card-title">Exam Declararion</h4>
                                <form id="form1" runat="server" class="forms-sample">
                                    <div class="form-group row">
                                        <label for="lblComplexity" class="col-sm-2 col-form-label">Complexity Type:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtcomplexity" runat="server" CssClass="form-control" placeholder="Enter Complexity"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcomplexity"
                                                ErrorMessage="Complexity Type is Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click"
                                        class="btn btn-inverse-primary mr-2" ValidationGroup="msg1" />
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
                                                        <asp:GridView ID="Grdcomplexity" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                                            AllowSorting="true"
                                                            OnRowCommand="Grdcomplexity_RowCommand"
                                                            PageSize="15" CssClass="table table-mailbox" HorizontalAlign="Center">

                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Complexity Id">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("Complex_Id") %>'
                                                                            CommandName="Complex_Id" CommandArgument='<%# Bind("Complex_Id") %>'></asp:LinkButton>
                                                                    </ItemTemplate>

                                                                </asp:TemplateField>

                                                                <asp:BoundField DataField="Complex_Type" HeaderText="Complexity" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed"
                                                                Wrap="True" />
                                                            <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                                                            <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                                                            <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
                                                        </asp:GridView>
                                                        <asp:HiddenField ID="hdncomplexityid" runat="server" />
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

