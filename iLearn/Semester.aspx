<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="Semester.aspx.cs" Inherits="Semester" %>

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
                                <h4 class="card-title">Semester</h4>
                                <form id="form2" runat="server" class="forms-sample">
                                    <div class="form-group row">
                                        <label for="lblsem" class="col-sm-2 col-form-label">Semester:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtsemname" runat="server" CssClass="form-control" placeholder="Enter Semester"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsemname"
                                                ErrorMessage="Semester Name Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblcourse" class="col-sm-2 col-form-label">Select Course:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpcourse" CssClass="form-control" runat="server"
                                                AutoPostBack="false" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpcourse"
                                                ErrorMessage="Course Name Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click"
                                        class="btn btn-inverse-primary mr-2" ValidationGroup="msg1" />
                                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click"
                                        class="btn btn-inverse-info mr-2" />
                                    <asp:Button ID="btndelete" runat="server" Text="DELETE" class="btn btn-inverse-danger mr-2"
                                        OnClick="btndelete_Click" />
                                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" class="btn btn-inverse-dark" />

                                    <div class="col-md-12 grid-margin">
                                        <div class="row">
                                            <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <asp:GridView ID="Grdsem" AutoGenerateColumns="false" runat="server" OnRowCommand="grdsem_RowCommand"
                                                            AllowPaging="true" AllowSorting="true" OnSelectedIndexChanging="Grdsem_SelectedIndexChanging"
                                                            PageSize="15" OnPageIndexChanging="Grdsem_PageIndexChanging" CssClass="table table-mailbox"
                                                            HorizontalAlign="Center">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Sem_Id">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton1" runat="server" Text="<%#Bind('[Sem_Id]') %>" CommandName="Sem_Id"
                                                                            CommandArgument='<%#Bind("[Sem_Id]") %>'>
                                                                        </asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Sem_Name" HeaderText="Semester" />
                                                                <asp:BoundField DataField="Program_Name" HeaderText="Program Name" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="True" />
                                                            <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                                                            <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                                                            <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
                                                        </asp:GridView>
                                                        <asp:HiddenField ID="hdnsem" runat="server" />
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
